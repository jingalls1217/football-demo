#!/bin/bash
#
# Purpose of script:
#
#
#

# ===============================================================================================
# Get Current Date - use to determine where the date falls within
#        either 1) Completed Week - current date after Season Week End Date
#               2) Current Week - current date between Season Week Begin/End Date
#               3) Prior to this week's start date - current date before Season Week Begin Date
now="$(date)"
#now_format="$(date "+%b-%d-%Y")"
#now_format="$(date "+%s")"
now_format="$(date "+%Y-%m-%d")"
now_format_s=$(date -d "$now_format" +%s)
# the following is needed for running script on MacBook
# now_format_s=$(date -j -f "%Y-%m-%d" "$now_format" +%s)

#echo "$now"
#echo "$now_format"
#echo "$now_format_s"

# Working Variables
ARRAY_POINTER=0
ARRAY_CURR_POINTER=0

# ===============================================================================================
# Read parameter file
source parameters.dat
    # Possible entries
    #     save_nfl_current_season
    #     save_nfl_current_wk
    #     save_nfl_current_wk_flag
    #         - 0 = completed week
    #         - 1 = current active week
    #         - 2 = upcoming week

# ===============================================================================================
# Read Schedule file to generate records
#     - Build array of what needs to be generated
#     - If something generated update parameters.dat file with where left off

while IFS=, read -r nfl_season nfl_start_dow nfl_season_start_dt nfl_reg_wk_start nfl_reg_wk_end nfl_post_wk_start nfl_post_wk_end nfl_sb_wk nfl_thu_wk_start nfl_sat_wk_start
do

#debug    echo "$nfl_season $nfl_season_start_dt"


    # Loop thru from begin week to end week (week of Superbowl) to determine if this week should be generated or not
    for (( i=0; $i<$nfl_sb_wk; i++ ))
    do
        wk=$(($i+1))

        # Determine if week should be written or not

        # Week Flag values: 99=default; 0=Completed Week; 1=Current Week; 2=Upcoming Week
        wk_flag=99

        # ===============================================================================================
        # Generate Flag - by default set to "YES"
        generate_flag="YES"

        if [[ -z "$save_nfl_current_season" ]]; then
            generate_flag="YES"
        else
            if [[ -z "$save_nfl_current_wk" ]]; then
                generate_flag="YES"
            else
                # Have season and week, can eliminate prior seasons
                if [ $nfl_season -lt $save_nfl_current_season ]; then
                    generate_flag="NO"
                else
                    if [ $nfl_season -lt $save_nfl_current_season ]; then
                        generate_flag="NO"
                    else
                        if [ $nfl_season -eq $save_nfl_current_season ]; then
                             if [ $wk -lt $save_nfl_current_wk ]; then
                                 generate_flag="NO"
                             fi
                        fi
                    fi
                fi
            fi
        fi

        # Check for BYE week between Playoffs and SuperBowl - if on that week, do not generate
        if [ $wk -gt $nfl_post_wk_end ] && [ $wk -lt $nfl_sb_wk ]; then
            generate_flag="NO"
        fi

#debug        echo "generate: $generate_flag - season: $nfl_season"

        # ===============================================================================================
        # Set up Season Start Date as a Date
        season_start_dt=$(date -d "$nfl_season_start_dt" +%b-%d-%Y)
# the following is needed to run this on a MacBook
#        season_start_dt=$(date -j -f "%b-%d-%Y" "$nfl_season_start_dt" +%b-%d-%Y)

        # Determine if Season Week should be written
        # Calculate Begin & End of each Week - a week will always start on Wednesday (scratch Thursday) and go to Tuesday (scratch Monday)
        #      Good times - there are several instances of Tuesday & Wednesday games being played
        #      Looking to find when these games were played
        #            - 2012 Season started on a Wednesday (9/5)
        #            - 2010 Season game in Week 16 on Tuesday (12/28) w/Monday game
        #            - 2009, 2005, 2004, 1999, 1993, 1986, 1985, 1984, 1983, 1970 (start of season 9/18), and other years all had Friday Games
        if (( $nfl_start_dow == 'WED' )); then
            start_offset=0
            end_offset=6
        else
            if (( $nfl_start_dow == 'THU' )); then
                start_offset=-1
                end_offset=5
            else
                if (( $nfl_start_dow == 'FRI' )); then
                    start_offset=-2
                    end_offset=4
                else
                    # starts on Sunday
                    start_offset=-4
                    end_offset=2
                fi
            fi
        fi

        start_offset=$(($i*7+$start_offset))
        end_offset=$(($i*7+$end_offset))

        if [ $start_offset -lt 0 ]; then
            f_start_offset="-$start_offset days"
        else
            f_start_offset="+$start_offset days" 
        fi

        f_end_offset="+$end_offset days"


        # Week Start Date (always start on Thursday)
        wk_start_calc=$(date -d "$season_start_dt $f_start_offset")
        wk_begin_dt=$(date -d "$wk_start_calc" +%Y-%m-%d)
        wk_begin_dt_s=$(date -d "$wk_begin_dt" +%s)
# the following is needed to run this on a MacBook
#        wk_start_calc=$(date -j -v +"$start_offset"d -f "%b-%d-%Y" "$season_start_dt" +%s)
#        wk_begin_dt=$(date -j -f "%s" "$wk_start_calc" +%Y-%m-%d)
#        wk_begin_dt_s=$(date -j -f "%Y-%m-%d" "$wk_begin_dt" +%s)

        # Week End Date (always end on Monday)
        wk_end_calc=$(date -d "$season_start_dt $f_end_offset")
        wk_end_dt=$(date -d "$wk_end_calc" +%Y-%m-%d)
        wk_end_dt_s=$(date -d "$wk_end_dt" +%s)
# the following is needed to run this on a MacBook
#        wk_end_calc=$(date -j -v +"$end_offset"d -f "%b-%d-%Y" "$season_start_dt" +%s)
#        wk_end_dt=$(date -j -f "%s" "$wk_end_calc" +%Y-%m-%d)
#        wk_end_dt_s=$(date -j -f "%Y-%m-%d" "$wk_end_dt" +%s)

#debug            echo "$start_offset $wk_begin_dt $wk_begin_dt_s $now_format $now_format_s  $wk_end_dt $wk_end_dt_s"

        # Use current date to determine where we are at in Season/Wk
        #     if > Week Begin Date & > Week End Date
        #        completed week, write season record
        #     else
        #        if >= Week Begin Date & <= Week End Date
        #           current week, write current week record
        #        else
        #           not within this week, nothing to do
        if [ $wk_end_dt_s -lt $now_format_s ]; then
            # Completed Week, Write completed season week record
            wk_flag=0
        else
            if [ $now_format_s -ge $wk_begin_dt_s ] && [ $now_format_s -le $wk_end_dt_s ]; then
                # Current Week, Write current season week record
                wk_flag=1
            else
                # Not within this week
                wk_flag=2
            fi
        fi

        # ===============================================================================================
#debug        echo "*** Write record = $generate_flag : $wk_flag ***: $nfl_season - $wk : $wk_begin_dt $now_format $wk_end_dt"

        # Write record to appropriate arrays
        if [ $generate_flag = "YES" ]; then
            if [ $wk_flag -eq 0 ]; then
                # Write to array
                if [ $wk -le $nfl_reg_wk_end ]; then
                    wk_type="REG"
                else
                    wk_type="POST"
                fi
                array_gen_comp_weeks[$ARRAY_POINTER]="$wk_type|$nfl_season|$wk"

                # Everytime a record is written to array, increment ARRAY_POINTER
                ARRAY_POINTER=$(($ARRAY_POINTER+1))
            else
                if [ $wk_flag -eq 1 ]; then
                    # Write to CURRENT array
                    if [ $wk -le $nfl_reg_wk_end ]; then
                        wk_type="REG"
                    else
                        wk_type="POST"
                    fi
                    array_gen_curr_week[$ARRAY_CURR_POINTER]="$wk_type|$nfl_season|$wk"

                    # Everytime a record is written to array, increment ARRAY_CURR_POINTER
                    ARRAY_CURR_POINTER=$(($ARRAY_CURR_POINTER+1))
                fi
            fi
        fi
        # ===============================================================================================

    done

done < schedule.txt


# ===============================================================================================
# Here is where the records will be written to the appropriate file

# Print out array to screen
#echo "=== Completed Weeks ==="
#echo ${array_gen_comp_weeks[*]}
entries_in_completed_wks=${#array_gen_comp_weeks[@]}
#echo $entries_in_completed_wks

# Format entries from array & append to Season Weeks file
for (( x=0; x<${#array_gen_comp_weeks[@]}; x++ ))
do
    # Parse array entry to build FileNaem with Season and Week
    IFS=\| read -a fields <<<"${array_gen_comp_weeks[x]}" 
    # ${fields[0]}  - not used
    SEASON="${fields[1]}"
    WEEK="${fields[2]}"
    fileName=$SEASON\_$WEEK
#    echo $fileName

    echo ${array_gen_comp_weeks[x]} > game_weeks/completed/season_$fileName.txt
done



# Print out array to screen
#echo "=== Current Week ==="
#echo ${array_gen_curr_week[*]}
entries_in_current_wk=${#array_gen_curr_week[@]}
#echo $entries_in_current_wk

# Format entries from array & overwrite Current Week file
for (( x=0; x<${#array_gen_curr_week[@]}; x++ ))
do
    # Parse array entry to build FileNaem with Season and Week
    IFS=\| read -a fields <<<"${array_gen_curr_week[x]}"
    # ${fields[0]}  - not used
    SEASON="${fields[1]}"
    WEEK="${fields[2]}"
    fileName=$SEASON\_$WEEK
#    echo $fileName

    echo ${array_gen_curr_week[x]} > game_weeks/current/season_$fileName.txt
done


# ===============================================================================================
# Update parameters.dat file as needed
#     - Check if any current week entries (=0 means empty)
#     - Check if any completed week entries (=0 means empty)
#     - if both empty -> leave alone
#
if [ $entries_in_current_wk -eq 0 ]; then
    if [ $entries_in_completed_wks -eq 0 ]; then
        echo "Nothing to update"
    else
        # Write out new parameter file with last completed weeks details
        x=$(($entries_in_completed_wks-1))
        # Parse array entry, separated with Pipes
        IFS=\| read -a fields <<<"${array_gen_comp_weeks[x]}"
        season=${fields[1]}
        wk=${fields[2]}

#        echo "parameters : $season $wk"
        echo "save_nfl_current_season=$season" > parameters.dat
        echo "save_nfl_current_wk=$wk" >> parameters.dat
        echo "save_nfl_current_wk_flag=0" >> parameters.dat
    fi
else
        # Write out new parameter file with last completed weeks details
        x=$(($entries_in_current_wk-1))
        # Parse array entry, separated with Pipes
        IFS=\| read -a fields <<<"${array_gen_curr_week[x]}"
        season=${fields[1]}
        wk=${fields[2]}

#        echo "parameters : $season $wk"
        echo "save_nfl_current_season=$season" > parameters.dat
        echo "save_nfl_current_wk=$wk" >> parameters.dat
        echo "save_nfl_current_wk_flag=1" >> parameters.dat

fi

# ===============================================================================================

