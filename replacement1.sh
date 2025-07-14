#!/bin/bash

FILE=$1

cat $FILE |cut -d"," -f1- --output-delimiter=" "

