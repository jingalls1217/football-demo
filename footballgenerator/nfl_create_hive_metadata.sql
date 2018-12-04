DROP DATABASE IF EXISTS nfl CASCADE;		
CREATE DATABASE nfl ;		

DROP TABLE IF EXISTS nfl.passing_stats ;		
CREATE TABLE nfl.passing_stats (		
		
`gameid`	string 	,
`category`	string 	,
`playerid`	string 	,
`team`	string 	,
`homeaway`	string 	,
`name`	string 	,
`att`	smallint 	,
`cmp`	smallint 	,
`yds`	smallint 	,
`tds`	smallint 	,
`ints`	smallint 	,
`twopta`	smallint 	,
`twoptm`	smallint 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.rushing_stats ;		
CREATE TABLE nfl.rushing_stats (		
		
`gameid`	string 	,
`category`	string 	,
`playerid`	string 	,
`team`	string 	,
`homeaway`	string 	,
`name`	string 	,
`att`	smallint 	,
`yds`	smallint 	,
`tds`	smallint 	,
`lng`	smallint 	,
`lngtd`	smallint 	,
`twopta`	smallint 	,
`twoptm`	smallint 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.receiving_stats ;		
CREATE TABLE nfl.receiving_stats (		
		
`gameid`	string 	,
`category`	string 	,
`playerid`	string 	,
`team`	string 	,
`homeaway`	string 	,
`name`	string 	,
`rec`	smallint 	,
`yds`	smallint 	,
`tds`	smallint 	,
`lng`	smallint 	,
`lngtd`	smallint 	,
`twopta`	smallint 	,
`twoptm`	smallint 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.kicking_stats ;		
CREATE TABLE nfl.kicking_stats (		
		
`gameid`	string 	,
`category`	string 	,
`playerid`	string 	,
`team`	string 	,
`homeaway`	string 	,
`name`	string 	,
`fgm`	smallint 	,
`fga`	smallint 	,
`fgyds`	smallint 	,
`totpfg`	smallint 	,
`xpmade`	smallint 	,
`xpmissed`	smallint 	,
`xpa`	smallint 	,
`xpb`	smallint 	,
`xptot`	smallint 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.punting_stats ;		
CREATE TABLE nfl.punting_stats (		
		
`gameid`	string 	,
`category`	string 	,
`playerid`	string 	,
`team`	string 	,
`homeaway`	string 	,
`name`	string 	,
`pts`	smallint 	,
`yds`	smallint 	,
`avg`	smallint 	,
`i20`	smallint 	,
`lng`	smallint 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.kickret_stats ;		
CREATE TABLE nfl.kickret_stats (		
		
`gameid`	string 	,
`category`	string 	,
`playerid`	string 	,
`team`	string 	,
`homeaway`	string 	,
`name`	string 	,
`ret`	smallint 	,
`avg`	smallint 	,
`tds`	smallint 	,
`lng`	smallint 	,
`lngtd`	smallint 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.puntret_stats ;		
CREATE TABLE nfl.puntret_stats (		
		
`gameid`	string 	,
`category`	string 	,
`playerid`	string 	,
`team`	string 	,
`homeaway`	string 	,
`name`	string 	,
`ret`	smallint 	,
`avg`	smallint 	,
`tds`	smallint 	,
`lng`	smallint 	,
`lngtd`	smallint 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.defense_stats ;		
CREATE TABLE nfl.defense_stats (		
		
`gameid`	string 	,
`category`	string 	,
`playerid`	string 	,
`team`	string 	,
`homeaway`	string 	,
`name`	string 	,
`tkl`	smallint 	,
`ast`	smallint 	,
`sk`	smallint 	,
`ints`	smallint 	,
`ffum`	smallint 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.fumbles_stats ;		
CREATE TABLE nfl.fumbles_stats (		
		
`gameid`	string 	,
`category`	string 	,
`playerid`	string 	,
`team`	string 	,
`homeaway`	string 	,
`name`	string 	,
`tot`	smallint 	,
`rcv`	smallint 	,
`trcv`	smallint 	,
`yds`	smallint 	,
`lost`	smallint 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.team_stats ;		
CREATE TABLE nfl.team_stats (		
		
`gameid`	string 	,
`homeaway`	string 	,
`team`	string 	,
`score_qtr1`	smallint 	,
`score_qtr2`	smallint 	,
`score_qtr3`	smallint 	,
`score_qtr4`	smallint 	,
`score_ovrtime`	smallint 	,
`score_tot`	smallint 	,
`totfd`	smallint 	,
`totyds`	smallint 	,
`pyds`	smallint 	,
`ryds`	smallint 	,
`pen`	smallint 	,
`penyds`	smallint 	,
`trnovr`	smallint 	,
`pt`	smallint 	,
`ptyds`	smallint 	,
`ptavg`	smallint 	,
`top`	string 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.drive_summary_stats ;		
CREATE TABLE nfl.drive_summary_stats (		
		
`driveid`	string 	,
`gameid`	string 	,
`posteam`	string 	,
`qtr`	smallint 	,
`redzone`	boolean 	,
`fds`	smallint 	,
`result`	string 	,
`penyds`	smallint 	,
`ydsgained`	smallint 	,
`numplays`	smallint 	,
`postime`	string 	,
`start_qtr`	smallint 	,
`start_time`	string 	,
`start_yrdln`	string 	,
`start_team`	string 	,
`end_qtr`	smallint 	,
`end_time`	string 	,
`end_yrdln`	string 	,
`end_team`	string 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.drive_plays_stats ;		
CREATE TABLE nfl.drive_plays_stats (		
		
`driveid`	string 	,
`gameid`	string 	,
`playid`	string 	,
`sp`	smallint 	,
`qtr`	smallint 	,
`down`	smallint 	,
`ptime`	string 	,
`yrdln`	string 	,
`ydstogo`	smallint 	,
`ydsnet`	smallint 	,
`posteam`	string 	,
`desc`	string 	,
`note`	string 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.drive_player_plays_stats ;		
CREATE TABLE nfl.drive_player_plays_stats (		
		
`playerid`	string 	,
`playid`	string 	,
`driveid`	string 	,
`gameid`	string 	,
`sequence`	smallint 	,
`clubcode`	string 	,
`playerName`	string 	,
`statId`	smallint 	,
`yards`	smallint 	,
`ord`	string 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.scoring_summary_stats ;		
CREATE TABLE nfl.scoring_summary_stats (		
		
`gameid`	string 	,
`playid`	string 	,
`type`	string 	,
`desc`	string 	,
`qtr`	smallint 	,
`team`	string 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.scoring_players_stats ;		
CREATE TABLE nfl.scoring_players_stats (		
		
`gameid`	string 	,
`playid`	string 	,
`name`	string 	,
`playerid`	string 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.season_dim ;		
CREATE TABLE nfl.season_dim (		
		
`season`	string 	,
`start_dow`	string 	,
`season_start_dt`	date 	,
`reg_wk_start`	smallint 	,
`reg_wk_end`	smallint 	,
`post_wk_start`	smallint 	,
`post_wk_end`	smallint 	,
`sb_wk`	smallint 	,
`thu_wk_start`	smallint 	,
`sat_wk_start`	smallint 	
)		
STORED AS ORC 		
;		
		
		
DROP TABLE IF EXISTS nfl.games_dim ;		
CREATE TABLE nfl.games_dim (		
		
`season`	string 	,
`week`	string 	,
`type`	string 	,
`gd`	string 	,
`eid`	string 	,
`gsis`	string 	,
`d`	string 	,
`t`	string 	,
`q`	string 	,
`k`	string 	,
`hm`	string 	,
`hnn`	string 	,
`hs`	string 	,
`v`	string 	,
`vnn`	string 	,
`vs`	string 	,
`p`	string 	,
`rz`	string 	,
`ga`	string 	,
`gt`	string 	,
`timestamp`	timestamp 	
)		
STORED AS ORC 		
;		
		


