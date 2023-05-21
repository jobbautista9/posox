#!/bin/sh

: '
Copyright (C) 2022 Job Bautista

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

. ./libsox.sh

maxChannels=2
setDefaultSynthType square

setTempo 120

part1() {
 notes "$dei:c#4/f#4"
 silence $ei
 silence $si
 notes "
  $si:C#4/F#4
  $si:C#4/F#4
  $ei:C#4/F#4
  $ei:C#4/F#4
  $ei:C#4/F#4
"
 silence $ei
}
part1; part1;
notes "
 $ei:D#4/G#4
 $qu:0
 $si:D#4/G#4
 $si:D#4/G#4
 $ei:D#4/G#4
 $ei:D#4/G#4
 $dei:D#4/G#4
 $si:0

 $dei:E4/E5
 $ei:0
 $si:0
 $si:E4/E5
 $si:E4/E5
 $ei:E4/E5
 $ei:E4/E5
 $qu:C4/F5
"
