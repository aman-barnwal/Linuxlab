#!/bin/bash
# job_control.sh

# Start background job
sleep 60 &
job_pid=$!

echo "Started background job: sleep 60 (PID = $job_pid)"

#List jobs
jobs

# Bring the job to foreground
echo "Bringing job to foreground..."
fg %1

#Kill the job
echo "Terminating job..."
kill -9 $job_pid
echo "JOb terminated."
