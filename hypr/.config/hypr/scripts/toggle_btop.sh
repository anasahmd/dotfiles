#!/bin/bash
if pgrep -x "btop" > /dev/null; then
    pkill -x btop
else
    kitty --class float_btop -e btop
fi