#!/usr/bin/env bash
echo "=== Checking Open Listening Ports ==="
ss -tulpn
echo "=== Checking Users with Root Privileges ==="
awk -F: '($3 == 0) {print $1}' /etc/passwd
echo "=== Checking Failed SSH Login Attempts ==="
grep "Failed password" /var/log/auth.log 2>/dev/null | tail -n 20 || true
