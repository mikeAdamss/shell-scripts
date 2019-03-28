#!/bin/bash

TOPICS=$(kafka-topics --zookeeper localhost:2181/kafka --list )

for T in $TOPICS
do
  if [ "$T" != "__consumer_offsets" ]; then
    kafka-topics --zookeeper localhost:2181/kafka --delete --topic $T
  fi
done
