CURRENT_SOURCE=$(pactl info | grep "Default Source" | cut -f3 -d" ")

if [[ $(pactl list sources | grep -A 10 $CURRENT_SOURCE | grep "Mute: yes") ]]; then
    echo "{\"text\": \"\", \"class\": \"mic-muted\", \"alt\": \"ok\"}"
else
    echo "{\"text\": \"\", \"class\": \"mic-unmuted\", \"alt\": \"ok\"}"
fi