#!/bin/sh

: '
Copyright (C) 2022-2023 Job Bautista

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
'

setTempo()
{
 BPM=$1
 if [ -z $2 ]
 then
  precision=3
 else
  precision=$2
 fi
 # durations
 fu=$(echo "scale=$precision; 240 / $BPM" | bc -l) # Whole note
 ha=$(echo "scale=$precision; 120 / $BPM" | bc -l) # Half note
 qu=$(echo "scale=$precision; 60 / $BPM" | bc -l) # Quarter note
 ei=$(echo "scale=$precision; 30 / $BPM" | bc -l) # Eighth note
 si=$(echo "scale=$precision; 15 / $BPM" | bc -l) # Sixteenth note
 dha=$(echo "scale=$precision; 180 / $BPM" | bc -l) # Dotted-half note
 dqu=$(echo "scale=$precision; 90 / $BPM" | bc -l) # Dotted-quarter note
 dei=$(echo "scale=$precision; 45 / $BPM" | bc -l) # Dotted-eighth note
 dsi=$(echo "scale=$precision; 22.5 / $BPM" | bc -l) # Dotted-sixteenth note
 tqu=$(echo "scale=$precision; 40 / $BPM" | bc -l) # Triplet-quarter note
 tei=$(echo "scale=$precision; 20 / $BPM" | bc -l) # Triplet-eighth note
 tsi=$(echo "scale=$precision; 10 / $BPM" | bc -l) # Triplet-sixteenth note
}

defaultsynth="sin"            # for backwards compatibility with previous
synthtype="$defaultsynth"     # child scripts that only used sine

setDefaultSynthType()
{
 defaultsynth=$1
 synthtype="$defaultsynth"
}

silence()
{ # needed because pluck synth doesn't support zero frequency
 duration=$1
 createSoxPipes # necessary because we will be changing synth type
 synthtype="sin" # sin, square, sawtooth, trapezium, and exp support freq=0
 notes="$duration:0"
 createSoxPipes # get the silence printed before we return to default synth
 synthtype="$defaultsynth"
}

octave=0
decreaseOctave()
{
 octave=$(($octave - $1))
}
increaseOctave()
{
 octave=$(($octave + $1))
}

volume=0.7
setVolume()
{
 volume=$1
}

maxChannels=1 # for backwards compatibility with most scripts that only used
              # one synth channel

seq()
{ # In case seq(1) is not available
 num=$1
 while [ $num -le $2 ]
 do
  echo $num
  num=$(($num + 1))
 done
}

createSoxPipes()
{
 for note in $notes
 do
  if [ $maxChannels -eq 1 ]
  then
   printf '"|sox -n -p synth '$(echo "$note" |
            sed 's/:.*//')' '$synthtype' '$(echo "$note" |
            sed 's/.*://;' | tr '[a-z]' '[A-Z]')'"\n'
  else
   printf '"|sox -n -p synth '$(echo "$note" | sed 's/:.*//')''
   for n in $(seq 1 $maxChannels)
   do
    lastExistingNote=$(echo "$note" | sed 's/.*://;' | cut -d / -f "$n" | tr '[a-z]' '[A-Z]')
    back=1
    while [ -z $lastExistingNote ]
    do
     lastExistingNote=$(echo "$note" | sed 's/.*://;' | cut -d / -f "$(($n - $back))" | tr '[a-z]' '[A-Z]')
     back=$(($back + 1))
    done
    finalkey=$(echo "$lastExistingNote" | head -c -2)
    finaloctave=$(($(echo "$lastExistingNote" | tail -c 2) + $octave))
    finalnote="$finalkey$finaloctave"
    printf ' '$synthtype' '$finalnote''
   done
   for n in $(seq 1 $maxChannels)
   do
    printf ' vol '$volume''
   done
   printf '"\n'
  fi
 done
}

notes()
{
 notes=$1
 createSoxPipes
}
