#!/bin/bash

# Function to calculate CPU usage
calculate_cpu_usage() {
    # Read the first line of /proc/stat for CPU data
    local cpu_stats=($(head -n 1 /proc/stat))
    
    # Extract fields
    local user=${cpu_stats[1]}
    local nice=${cpu_stats[2]}
    local system=${cpu_stats[3]}
    local idle=${cpu_stats[4]}
    local iowait=${cpu_stats[5]}
    local irq=${cpu_stats[6]}
    local softirq=${cpu_stats[7]}

    # Total idle and active times
    local idle_all=$((idle + iowait))
    local active=$((user + nice + system + irq + softirq))

    # Total CPU time
    local total=$((active + idle_all))

    # Return values as space-separated string
    echo "$active $total"
}

# Get initial readings
read -r prev_active prev_total < <(calculate_cpu_usage)

# Sleep for a short duration to calculate deltas
# printf " 0%%"
sleep 1

# Get new readings
read -r curr_active curr_total < <(calculate_cpu_usage)

# Calculate deltas
delta_active=$((curr_active - prev_active))
delta_total=$((curr_total - prev_total))

# Calculate average CPU usage as a percentage
cpu_usage=$(awk "BEGIN { print ($delta_active / $delta_total) * 100 }")

# Print the result
printf "%.1f" "$cpu_usage"
