#!/bin/bash

WIFI_INTERFACE="wlp2s0"

get_wifi_signal_strength() {
    local quality=$(awk -v iface="$WIFI_INTERFACE" '$1 ~ iface {print $3}' /proc/net/wireless | tr -d '.')
    if [[ -z "$quality" ]]; then
        echo 0
    else
        local percent=$(( 100 * quality / 70 ))
        (( percent > 100 )) && percent=100
        (( percent < 0 )) && percent=0
        echo $percent
    fi
}

wifi_state=$(ip link show "$WIFI_INTERFACE" 2>/dev/null | grep -o "state [A-Z]*" | awk '{print $2}')

if [[ "$wifi_state" == "UP" ]]; then
    signal=$(get_wifi_signal_strength)
    echo "${signal}%"
fi

