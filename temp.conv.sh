#!/bin/bash

echo "Converting between the different temperatures scales"
echo "1. Convert Celsius temp. to Fahrenheit"
echo "2. Convert Fahrenheit temp. to Celsius"
echo -n "Select your choice (1-2) : "
read choice

if [ $choice -eq 1 ] #1st choice
then
        echo -n "Enter temperature (C) :"
        read tc #reads entered temperature
        #formula Tf=(9/5)*Tc+32
        tf=$(echo "scale=2;((9/5) * $tc) + 32" |bc)
        echo "$tc C = $tf F" #conversion
elif [ $choice -eq 2 ] #2nd choice
then
        echo -n "Enter temperature (F) : "
        read tf #reads entered tempearature
        tf=$(echo "scale=2;(5/9)*($tf-32)"|bc)
        echo "$tf = $tc" #conversion
else
        echo "Please select 1 or 2 only"
        exit 1
fi

