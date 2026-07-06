#!/bin/bash

# ===================================================
# Script Name : monitor.sh
# Author      : Alan Jose
# Date        : 19-01-2026
# Description : EC2 Monitoring Script
#               Displays running services, CPU usage,
#               memory usage, and disk usage.
# ===================================================

clear

echo "======================================================="
echo "           EC2 INSTANCE MONITORING REPORT"
echo "======================================================="
echo "Generated on : $(date)"
echo "Hostname     : $(hostname)"
echo "Current User : $(whoami)"
echo "======================================================="
echo

echo "1. RUNNING SERVICES"
echo "-------------------------------------------------------"
systemctl list-units --type=service --state=running --no-pager

echo
echo "2. CPU USAGE"
echo "-------------------------------------------------------"
top -bn1 | grep "Cpu(s)"

echo
echo "3. MEMORY USAGE"
echo "-------------------------------------------------------"
free -h

echo
echo "4. DISK USAGE"
echo "-------------------------------------------------------"
df -h

echo
echo "======================================================="
echo "        Monitoring Completed Successfully"
echo "======================================================="
