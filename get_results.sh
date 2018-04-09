#!/bin/bash
#return results in xml format

#task=$(cat scan)

#This shows the task id 
taskid=$(head -c 36 scan)
#Ignore the following comments.
#format=$(omp --username demo -w demo -F | grep -i "TXT")
#format=$(head -c 36)
#report=$(omp --username demo -w demo -R '$taskid' -f a3810a62-1f62-11e1-9219-406186ea4fc5)

#THis will get the results that belongs to the task we created before in openvas_start file and prints it out in the id file.
reportid=$(omp --username demo -w demo -iX "<get_tasks task_id='$taskid' details='1'/>" > id)


