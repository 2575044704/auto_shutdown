#!/bin/bash
# 获取 Jupyter Lab 进程的 PID
pid=$(pgrep -f jupyter-lab)
echo "获取 Jupyter Lab 进程的 PID"
while true; do
    # 获取 PID 为 20 的进程运行时长
    runtime=$(ps -o etime= -p $pid)

    # 解析运行时长中的分钟部分
    minutes=$(echo $runtime | awk -F: '{print $1}')
    echo 已运行$minutes
    # 判断运行时长是否大于 29 分钟
    if [ $minutes -gt 28 ]; then
        echo "运行时长已超过29分钟，将于10秒内关机，注意保存数据！！"
        sleep 10
        # 获取除了PID为80以外的所有进程的PID，并关闭它们
        ps aux | awk '$2 != 80 {print $2}' | grep -v 'PID' | xargs kill -9
    else
        echo "运行时长仍在29分钟以下，不关机"
    fi
    sleep 40
done
