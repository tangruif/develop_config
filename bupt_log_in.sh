#! /bin/bash
curl -X POST \
	"http://10.3.8.211/login" \
	-d "user=${1}&pass=${2}" \
	> /dev/null 2>&1
