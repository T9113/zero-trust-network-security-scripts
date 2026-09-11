#!/usr/bin/env bash
# Basic SHA256 integrity baseline check for /etc
find /etc -type f -exec sha256sum {} + > /var/log/etc_hashes.baseline 2>/dev/null
echo "Baseline hash generated in /var/log/etc_hashes.baseline"
