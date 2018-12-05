#!/bin/bash
#
# Purpose of script: remove all created files
#
#
#

rm -rf ./game_weeks/backup/
rm -rf ./game_weeks/backup_current/
rm ./game_weeks/completed/season_*.txt
rm ./game_weeks/current/season_*.txt

rm -rf ./gameschedule/completed/
rm -rf ./gameschedule/completed_games/

rm -rf ./gamestats/completed/
rm -rf ./gamestats/completed_stats_by_drive/
rm -rf ./gamestats/completed_stats_by_drive_play/
rm -rf ./gamestats/completed_stats_by_drive_play/
rm -rf ./gamestats/completed_stats_by_player/
rm -rf ./gamestats/completed_stats_by_scoring/
rm -rf ./gamestats/completed_stats_by_scoring_players/
rm -rf ./gamestats/completed_stats_by_team/
rm -rf ./gamestats/completed_stats_by_drive_player_play/

cp ./parameters_refresh.dat ./parameters.dat
