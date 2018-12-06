DROP DATABASE IF EXISTS nfl_stage CASCADE;		
CREATE DATABASE nfl_stage ;		

DROP TABLE IF EXISTS nfl_stage.passing ;		
CREATE TABLE nfl_stage.passing (		

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

DROP TABLE IF EXISTS nfl_stage.rushing ;		
CREATE TABLE nfl_stage.rushing (		

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

DROP TABLE IF EXISTS nfl_stage.receiving ;		
CREATE TABLE nfl_stage.receiving (		

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

DROP TABLE IF EXISTS nfl_stage.kicking ;		
CREATE TABLE nfl_stage.kicking (		

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

DROP TABLE IF EXISTS nfl_stage.punting ;		
CREATE TABLE nfl_stage.punting (		

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

DROP TABLE IF EXISTS nfl_stage.kickret ;		
CREATE TABLE nfl_stage.kickret (		

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

DROP TABLE IF EXISTS nfl_stage.puntret ;		
CREATE TABLE nfl_stage.puntret (		

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

DROP TABLE IF EXISTS nfl_stage.defense ;		
CREATE TABLE nfl_stage.defense (		

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

DROP TABLE IF EXISTS nfl_stage.fumbles ;		
CREATE TABLE nfl_stage.fumbles (		

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

DROP TABLE IF EXISTS nfl_stage.team ;		
CREATE TABLE nfl_stage.team (		

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

DROP TABLE IF EXISTS nfl_stage.drive_summary ;		
CREATE TABLE nfl_stage.drive_summary (		

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

DROP TABLE IF EXISTS nfl_stage.drive_plays ;		
CREATE TABLE nfl_stage.drive_plays (		

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

DROP TABLE IF EXISTS nfl_stage.drive_player_plays ;		
CREATE TABLE nfl_stage.drive_player_plays (		

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

DROP TABLE IF EXISTS nfl_stage.scoring_summary ;		
CREATE TABLE nfl_stage.scoring_summary (		

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

DROP TABLE IF EXISTS nfl_stage.scoring_players ;		
CREATE TABLE nfl_stage.scoring_players (		

`gameid`	string 	,
`playid`	string 	,
`name`	string 	,
`playerid`	string 	,
`timestamp`	timestamp 	
)		
STORED AS ORC  		
;		

DROP TABLE IF EXISTS nfl_stage.games ;		
CREATE TABLE nfl_stage.games (		

`season`	smallint 	,
`week`	smallint 	,
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
`hs`	smallint 	,
`v`	string 	,
`vnn`	string 	,
`vs`	smallint 	,
`p`	string 	,
`rz`	string 	,
`ga`	string 	,
`gt`	string 	,
`timestamp`	timestamp 	
)		
STORED AS ORC  		
;		

