#!/bin/bash

# Author: Khanak Ahuja
# Roll Number: 2601730302

echo "======================================"
echo "       SYSTEM INFORMATION REPORT"
echo "======================================"

echo "Name: Khanak Ahuja"
echo "Roll Number: 2601730302"
echo "Date: $(date)"

echo ""
echo "CPU INFORMATION:"
lscpu | grep "Model name"
echo "Number of Cores: $(nproc)"

echo ""
echo "MEMORY INFORMATION:"
free -h | awk '/^Mem:/ {print "Total RAM: "$2"\nUsed RAM: "$3}'

echo ""
echo "TOP 3 PROCESSES BY CPU USAGE:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -4

echo ""
echo "Report generated successfully."
echo "======================================"
