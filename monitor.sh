#!/bin/bash

check_disk() {
    echo "[Disk Usage]"
    df -h | grep '^/dev/'
}

check_memory() {
    echo "[Memory Usage]"
    free -h
}

check_updates() {
    echo "[Updates Available]"
    sudo apt update -qq && apt list --upgradable 2>/dev/null
}

recent_files() {
    echo "[Files Modified in Last 24h]"
    find ~ -type f -mtime -1 2>/dev/null | head -n 10
}


check_disk
echo ""
check_memory
echo ""
check_updates
echo ""
recent_files
