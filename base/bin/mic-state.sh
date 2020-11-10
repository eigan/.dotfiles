if pulseaudio-ctl | grep "Is source muted" | grep -q "yes"; then
  echo "{\"text\": \"\", \"class\": \"mic-muted\", \"alt\": \"ok\"}"
else
  echo "{\"text\": \"\", \"class\": \"mic-unmuted\", \"alt\": \"ok\"}"
fi
