#!/bin/sh

$1 -e "use $2" 1>/dev/null 2>&1 
echo $? 

