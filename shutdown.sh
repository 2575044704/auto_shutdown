#!/bin/bash

while true; do
    # 获取 PID 为 8 的进程运行时长
    runtime=$(ps -o etime= -p 8)

    # 解析运行时长中的分钟部分
    minutes=$(echo $runtime | awk -F: '{print $1}')
    echo $minutes
    # 判断运行时长是否大于 29 分钟
    if [ $minutes -gt 29 ]; then
        echo "Process with PID 8 has been running for more than 29 minutes. Killing the process..."
        kill 8
    else
        echo "Process with PID 8 is still running within the 29-minute limit."
    fi
    sleep 30
done
