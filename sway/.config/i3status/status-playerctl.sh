#!/usr/bin/env bash
# Script to echo song information using playerctl
# If spotify is not playing, nothing is echoed.
#
# Requirements:
#   - playerctl (https://github.com/acrisci/playerctl)
#
# @author Edvin Hultberg <post@hultberg.no>

spotify_status=$(playerctl status)
spotify_artist=$(playerctl metadata xesam:artist)
spotify_song=$(playerctl metadata xesam:title)

if [[ "$spotify_status" = "Playing" ]]; then
	echo -n "  $spotify_artist - $spotify_song" || exit 1
elif [[ "$spotify_status" = "Paused" ]]; then
	echo -n "  $spotify_artist - $spotify_song" || exit 1
else
	echo -n ""
fi
