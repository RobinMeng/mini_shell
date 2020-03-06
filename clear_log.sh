#!/bin/sh

dirs=("","","")
DATE=`date +%F | sed 's/-//g'``date +%T | sed 's/://g'`
while true 
    do 
        echo "${DATE}开始清除log日志 每天清理一次" >> clear_log.log
 	echo "${DATE}开始清除log日志 每天清理一次"
        for path in $dirs
            do
                cd ${path}
                rm -rf *.log
		## 命令添加在这里 
	
                echo "${path}清理完毕" >> clear_log.log
		echo "${path}清理完毕"
            done 
    sleep 24h
done
