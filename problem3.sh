#!/bin/bash

pass_count=0
fail_count=0

echo "Enter Student ID:"
read sid

echo "Enter marks of Subject 1:"
read m1
echo "Enter marks of Subject 2:"
read m2
echo "Enter marks of Subject 3:"
read m3

# Calculate total
total=$((m1 + m2 + m3))

# Calculate percentage
percentage=$((total * 100 / 300))

# Grade & Pass/Fail
if [ $percentage -ge 80 ]; then
    grade="A+"
    result="PASS"
    pass_count=$((pass_count+1))
elif [ $percentage -ge 70 ]; then
    grade="A"
    result="PASS"
    pass_count=$((pass_count+1))
elif [ $percentage -ge 60 ]; then
    grade="A-"
    result="PASS"
    pass_count=$((pass_count+1))
elif [ $percentage -ge 50 ]; then
    grade="B"
    result="PASS"
    pass_count=$((pass_count+1))
else
    grade="F"
    result="FAIL"
    fail_count=$((fail_count+1))
fi

echo "------------------------"
echo "Final Summary"
echo "Student ID   : $sid"
echo "Total Marks : $total"
echo "Percentage  : $percentage%"
echo "Grade       : $grade"
echo "Result      : $result"
echo "------------------------"
echo "Total Pass  : $pass_count"
echo "Total Fail  : $fail_count"

