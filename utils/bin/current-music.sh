
spotify_status=$(playerctl status 2> /dev/null)
spotify_artist=$(playerctl metadata xesam:artist 2> /dev/null)
spotify_song=$(playerctl metadata xesam:title 2> /dev/null)


if [[ "$spotify_status" = "Playing" ]]; then
	echo -n "  $spotify_artist - $spotify_song" || exit 1
elif [[ "$spotify_status" = "Paused" ]]; then
	echo -n "  $spotify_artist - $spotify_song" || exit 1
else
	echo -n ""
fi