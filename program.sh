#!/bin/bash

. ./initialize.sh


while [ true ]; do
    . ./processState.sh
    . ./drawGui.sh

    sleep $sleepTime
done

