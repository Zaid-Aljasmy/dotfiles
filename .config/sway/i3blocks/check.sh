#!/bin/bash

DIR="$HOME/.config/sway/i3blocks"

# التحقق من وجود time
if ! command -v /usr/bin/time &> /dev/null; then
    echo "يرجى تثبيت الحزمة time: sudo apt install time"
    exit 1
fi

echo "=== فحص استهلاك الموارد لكل سكريبت في $DIR ==="
echo

for script in "$DIR"/*; do
    if [ -x "$script" ] && [ ! -d "$script" ]; then
        echo "فحص: $(basename "$script")"
        /usr/bin/time -v "$script" >/dev/null 2>&1
        echo
    fi
done

