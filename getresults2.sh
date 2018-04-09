#!/bin/bash
#get the report id from the id file that contains the report with the taskid


#This will grap the report ids of the vulnerabilities found. the report ids came from the report task id we got in get_results.sh file. It will then print out to report-ids3.
getid=$(grep 'report id' id > report-ids)
report_ids=$(awk '{print substr($0,23,49)}' report-ids > report-ids2)
reportids3=$(awk '{print substr($0,0,36)}' report-ids2 > report-ids3)
#ignore following comments
#get report and the text format
#id=$(cat report-ids3)
#report=$(omp --username demo -w demo -R $ -f 'a3810a62-1f62-11e1-9219-406186ea4fc5' > final)
