#!/bin/bash

ID="***"
TOKEN="***"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

TEXT="STAGE:+$CI_JOB_STAGE,+STATUS:+$CI_JOB_STATUS+Делаем"


curl -s -X POST $URL -d chat_id=$ID -d text="$TEXT" -d text="$TEXT" > /dev/null
