#!/bin/bash -x

read -p "Enter Length in feet " l
read -p "Enter Width in feet " w

#Feet to meter
length=`echo "$l * 0.3048"|bc `
width=`echo "$w * 0.3048"|bc`
echo Plot is of $length x $width

#Meter to acres
squareMeter=`echo "$len * $wed"|bc`
acres=`echo "$squareMeter * 0.000247105"|bc`

#Inch to ft
read -p "Enter Unit Inches : " inch
SCALE=12

result=$(($inch/$SCALE))
