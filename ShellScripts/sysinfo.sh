
#!/bin/bash
# Author: Khanak
# Course: B.Tech CSE (AI & ML)
# Roll Number: 2601730302
# Script: System Information Report

echo "=========================================="
echo "       SYSTEM INFORMATION REPORT"
echo "=========================================="

echo "Name: Khanak"
echo "Course: B.Tech CSE (AI & ML)"
echo "Roll Number: 2601730302"
echo "Date: $(date)"

echo ""
echo "---------- CPU INFORMATION ----------"

CPU=$(lscpu | grep "Model name:" | head -1 | cut -d ':' -f 2 | xargs)
CORES=$(nproc)

echo "CPU Model: $CPU"
echo "Number of Cores: $CORES"

echo ""
echo "---------- MEMORY INFORMATION ----------"

free -h | awk '/Mem:/ {
    print "Total Memory: " $2
    print "Used Memory: " $3
}'

echo ""
echo "---------- TOP 3 PROCESSES BY CPU ----------"

ps aux --sort=-%cpu | head -4

echo ""
echo "=========================================="
echo "Report generated successfully."
echo "=========================================="

