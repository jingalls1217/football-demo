#!/bin/bash
#
# Purpose of script: create required Kafka Topics 
#
#
#

# Run (on any Kafka Broker) 1 time to create Kafka topics
cd /usr/hdp/current/kafka-broker/bin

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic passing

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic rushing

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic receiving

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic kicking

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic punting

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic kickret

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic puntret

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic defense

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic fumbles

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic team

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic drive_summary

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic drive_plays

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic drive_player_plays

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic scoring_summary

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic scoring_players

./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic games

# List Kafka Topics to ensure they are created
#./kafka-topics.sh --list --zookeeper localhost:2181

