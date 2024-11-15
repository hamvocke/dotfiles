date=$(date +'%A, %b %d')
time=$(date +'%H:%M')

audio_volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

battery_status=$(cat /sys/class/power_supply/BAT0/status)

echo "${audio_volume} | BAT $battery_status | $date $time"
