#!/bin/bash
# Delete all topics (and their contained messages) from your local kafka setup.
# Assumes zookeeper:2181, kafka:9092

TOPICS=$(kafka-topics --zookeeper localhost:2181/kafka --list )

for T in $TOPICS
do
  if [ "$T" != "__consumer_offsets" ]; then
    kafka-topics --zookeeper localhost:2181/kafka --delete --topic $T
  fi
done
