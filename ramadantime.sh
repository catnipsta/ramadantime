#!/bin/bash
curl -Ls -o $HOME/.ramadantime https://sunrise-sunset.org/il/jerusalem ### LINK TO YOUR CITY
d1=$(grep "First light" $HOME/.ramadantime | sed -n '1p' | sed 's/.*at //;s/<.*//')
s1=$(grep "Sunset time:" $HOME/.ramadantime | sed -n '1p' | sed 's/.*\">//;s/<.*//')
d2=$(grep "First light" $HOME/.ramadantime | sed -n '2p' | sed 's/.*at //;s/<.*//')
s2=$(grep "Sunset time:" $HOME/.ramadantime | sed -n '2p' | sed 's/.*\">//;s/<.*//')
echo "Today:    $d1 - $s1"
echo "Tomorrow: $d2 - $s2"
rm -f $HOME/.ramadantime
