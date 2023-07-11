#Bash script to kill the process using the port passed as an argument while running the script  example : ./kill.sh 8000
#!/bin/bash
kill -9 `ss -tunlp | grep $1 |awk '{print $7}'|awk -F "," '{print $2}'| awk -F "=" '{print $2}' `

