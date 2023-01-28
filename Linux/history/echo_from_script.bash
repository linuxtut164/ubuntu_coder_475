#!/bin/bash

echo echoing---from a script

#working
echo $PWD
echo $(pwd)

#not working within quote
echo 'pwd--> $(pwd)'
echo 'pwd--> $PWD'
