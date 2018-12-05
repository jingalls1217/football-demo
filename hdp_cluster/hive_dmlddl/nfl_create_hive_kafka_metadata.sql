

DROP TABLE IF EXISTS nfl.kafka_passing ;		
CREATE EXTERNAL TABLE nfl.kafka_passing (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"passing"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_rushing ;		
CREATE EXTERNAL TABLE nfl.kafka_rushing (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"rushing"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_receiving ;		
CREATE EXTERNAL TABLE nfl.kafka_receiving (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"receiving"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_kicking ;		
CREATE EXTERNAL TABLE nfl.kafka_kicking (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"kicking"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_punting ;		
CREATE EXTERNAL TABLE nfl.kafka_punting (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"punting"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_kickret ;		
CREATE EXTERNAL TABLE nfl.kafka_kickret (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"kickret"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_puntret ;		
CREATE EXTERNAL TABLE nfl.kafka_puntret (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"puntret"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_defense ;		
CREATE EXTERNAL TABLE nfl.kafka_defense (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"defense"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_fumbles ;		
CREATE EXTERNAL TABLE nfl.kafka_fumbles (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"fumbles"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_team ;		
CREATE EXTERNAL TABLE nfl.kafka_team (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"team"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_drive_summary ;		
CREATE EXTERNAL TABLE nfl.kafka_drive_summary (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"drive_summary"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_drive_plays ;		
CREATE EXTERNAL TABLE nfl.kafka_drive_plays (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"drive_plays"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_drive_player_plays ;		
CREATE EXTERNAL TABLE nfl.kafka_drive_player_plays (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"drive_player_plays"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_scoring_summary ;		
CREATE EXTERNAL TABLE nfl.kafka_scoring_summary (		
		
`gameid`	string 	,
`playid`	string 	,
`type`	string 	,
`desc`	string 	,
`qtr`	smallint 	,
`team`	string 	,
`timestamp`	timestamp 	
)		
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"scoring_summary"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
DROP TABLE IF EXISTS nfl.kafka_scoring_players ;		
CREATE EXTERNAL TABLE nfl.kafka_scoring_players (		
		
`gameid`	string 	,
`playid`	string 	,
`name`	string 	,
`playerid`	string 	,
`timestamp`	timestamp 	
)		
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"scoring_players"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
DROP TABLE IF EXISTS nfl.kafka_games ;		
CREATE EXTERNAL TABLE nfl.kafka_games (		
		
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
		
STORED BY 	'org.apache.hadoop.hive.kafka.KafkaStorageHandler'	
TBLPROPERTIES (		,
"kafka.topic" = 	"games"	,
"kafka.bootstrap.servers" = 	"jingalls-nfl-1.field.hortonworks.com:6667"	,
"kafka.serde.class" = 	"org.apache.hadoop.hive.serde2.avro.AvroSerDe"	
)		
;		


