#!/bin/bash
kill -9 `ss -tunlp | grep $1 |awk '{print $7}'|awk -F "," '{print $2}'| awk -F "=" '{print $2}' `

