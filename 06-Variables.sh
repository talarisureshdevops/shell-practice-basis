#!/bin/bash

Start_time= $(date +%s)
echo "Script Executed at :$start_time"

sleep 10

end_time=$(date +%s)
total_time=$(($end_time-$start_time))

ech0 "The script Executed in : $total_time seconds"