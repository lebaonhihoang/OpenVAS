#!/bin/bash
#This will show the report/results using the report ids we got in the getresults2.sh file


id=$(awk '{print substr($0,0,36)}' report-ids2)
format="a3810a62-1f62-11e1-9219-406186ea4fc5"
get=$(omp --username demo -w demo -R $id --format $format > finalreport)
