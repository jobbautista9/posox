#!/bin/sh

: '
Copyright (C) 2023 Job Bautista

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

maxChannels=4
setDefaultSynthType square

setTempo 156 3

intro()
{
 notes "
  $qu:A#4/G4/D4/G3
  $qu:C5/A4/D4/G3
  $qu:D5/A#4/D4/G3
  $ei:C5/A4/D4/G3
  $ei:A#4/G4/D4/G3
 "
}

beforerun1()
{
 notes "
  $qu:A#4/G4/D4/G3
  $ei:C5/A4/D4/G3
  $qu:D5/A#4/D4/G3
  $ei:C5/A4/D4/G3
  $qu:A4/F4/D4/G3
 "
}

run1()
{
 notes "
  $si:A#4/G4/G3
  $si:C5/A4/G3
  $si:D5/A#4/D4
  $si:G5/D5/A#4/D4
  $si:A5/D5/A#4/G3
  $si:A#5/D5/A#4/G3
  $si:D6/D5/A#4/D4
  $si:A5/D5/A#4/D4
  $si:A#5/D5/A#4/G3
  $si:G6/D5/A#4/G3
  $si:A6/D5/A#4/D4
  $si:A#6/D5/A#4/D4
  $si:D7/D5/A#4/G3
  $si:G7/D5/A#4/G3
  $si:D7/D5/A#4/D4
  $si:C7/D5/A#4/D4
  $si:G6/G3
  $si:G6/G3
  $si:D6/D4
  $si:A#5/D4
  $si:G5/G3
  $si:F5/G3
  $si:D5/D4
  $si:A#4/D4
  $si:A#4/G3
  $si:A4/G3
  $si:A#4/D4
  $si:C5/D4
  $si:D5/G3
  $si:G5/G3
  $si:G5/D4
  $si:A5/D4
 "
}

chorus1()
{
 common1()
 {
  notes "
   $ei:D6/G3
   $ei:G5/D4
   $ei:C6/G3
   $ei:D6/D4
   $ei:A#5/G3
   $ei:A5/D4
   $ei:A5/G3
  "
 }
 common2()
 {
  notes "
   $ei:D6/D4

   $ei:D6/D#3
   $ei:G5/A#3
   $ei:C6/D#3
   $ei:D6/A#3
   $ei:A#5/D#3
   $ei:A5/A#3
   $ei:A5/D#3
   $ei:F5/A#3

   $ei:G5/F3
   $ei:D5/C4
   $ei:A5/F3
   $ei:A#5/C4
   $ei:A5/F3
   $ei:F5/C4
   $ei:F5/F3
   $ei:C5/C4

   $ei:F#5/F#3
   $ei:G5/C4
   $ei:A5/F#3
   $ei:D6/C4
   $ei:A5/F#3

   $ei:G5/D4
   $ei:F#5/F#3
   $ei:F#5/D4
  "
 }
 common3()
 {
  notes "
   $ei:G6/D4
   $ei:G6/D#3
   $ei:G6/A#3
   $ei:A6/D#3
   $ei:A#6/A#3
   $ei:A#6/D#3
   $ei:A#6/A#3
   $ei:A#6/D#3
   $ei:A#6/A#3
   $ei:F3
  "
 }
 common1; common2; common1; common3;
 notes "
  $ei:D5/C4
  $ei:G5/F3
  $ei:A5/C4
  $ei:A#5/F3
  $ei:A#5/C4
  $ei:A#5/F3
  $ei:A#5/C4

  $ei:A5/F#3
  $ei:A5/C4
  $ei:A5/F#3
  $ei:A5/C4

  $ei:A5/F#3
  $ei:A5/D4
  $ei:A5/F#3
  $ei:A5/D4
 "
 common1; common2; common1; common3;
 notes "
  $ei:A6/C4
  $ei:A#6/F3
  $ei:C7/C4
  $ei:C7/F3
  $ei:C7/C4
  $ei:C7/F3
  $ei:C7/C4

  $ei:F#6/F#3
  $ei:F#6/C4
  $ei:F#6/F#3
  $ei:F#6/C4

  $ei:F#6/F#3
  $ei:F#6/D4
  $ei:F#6/F#3
  $ei:F#6/D4

  $ei:G6/G3
  $ei:G6/D4
  $ei:G6/C5/A4/G3
  $ei:G6/C5/A4/D4
  $ei:G6/D5/A#4/G3
  $ei:G6/D5/A#4/D4
  $ei:G6/C5/A4/G3
  $ei:G6/A#4/G4/D4

  $ei:G6/A#4/G4/D#3
  $ei:G6/A#4/G4/A#3
  $ei:G6/C5/A4/D#3
  $ei:G6/C5/A4/A#3
  $ei:G6/D5/A#4/D#3
  $ei:G6/D5/A#4/A#3
  $ei:G6/C5/A4/D#3
  $ei:G6/A4/F4/A#3
 "
}

after1chorus1()
{
 notes "
  $ei:A#4/G4/F3
  $ei:A#4/G4/C4
  $ei:C5/A4/F3
  $ei:C5/A4/C4
  $ei:D5/A#4/F3
  $ei:D5/A#4/C4
  $ei:C5/A4/F3
  $ei:A#4/G4/C4
 "
}

afterchorus1_common()
{
 notes "
  $ei:A4/F#4/F#3
  $ei:A4/F#4/C4
  $ei:A#4/G4/F#3
  $ei:C5/A4/C4
  $ei:C5/A4/F#3
  $ei:A#4/G4/D4
  $ei:A4/F#4/F#3
  $ei:A4/F#4/D4

  $ei:A#4/G4/G3
  $ei:A#4/G4/D4
  $ei:C5/A4/G3
  $ei:C5/A4/D4
  $ei:D5/A#4/G3
  $ei:D5/A#4/D4
  $ei:C5/A4/G3
  $ei:A#4/G4/D4

  $ei:A#4/G4/D#3
  $ei:A#4/G4/A#3
  $ei:C5/A4/D#3
  $ei:C5/A4/A#3
  $ei:D5/A#4/D#3
  $ei:D5/A#4/A#3
  $ei:C5/A4/D#3
  $ei:A4/F4/A#3

  $ei:A4/F4/F3
  $ei:A4/F4/C4
  $ei:A#4/G4/F3
  $ei:A#4/G4/C4
  $ei:C5/A4/F3
  $ei:C5/A4/C4
  $ei:A#4/G4/F3
  $ei:A4/F4/C4
 "
}

after2chorus1()
{
 notes "
  $ei:A4/F#4/F#3
  $ei:A4/F#4/C4
  $ei:A#4/G4/F#3
  $ei:C5/A4/C4
  $ei:A#4/F#3
  $ei:C5/D4
  $ei:D5/F#3
  $ei:F5/D4
 "
}

chorus2()
{
 common1()
 {
  notes "
   $ei:G5/D#3
   $ei:G5/G3/D#3
   $ei:G5/A#3/D#3
   $ei:G5/D4/D#3
   $ei:D6/G4/D#3
   $ei:D6/A#4/D#3
   $ei:D6/D5/D#3
   $ei:D6/G5/D#3

   $ei:C6/F3
   $ei:C6/A3/F3
   $ei:C6/C4/F3
   $ei:C6/F4/F3
   $ei:F6/A4/F3
   $ei:F6/C5/F3
   $ei:F6/F5/F3
   $ei:F6/A5/F3
  "
 }
 common1;
 notes "
  $ei:D6/F#3
  $ei:D6/A3/F#3
  $ei:D6/C4/F#3
  $ei:F#6/F#4/F#3
  $ei:F#6/A4/F#3
  $ei:F#6/C5/F#3
  $ei:A6/F#5/F#3
  $ei:A6/A5/F#3

  $ei:A6/G3
  $ei:A6/A#3/G3
  $ei:A6/D4/G3
  $ei:G6/G4/G3
  $ei:D6/A#4/G3
  $ei:D6/D5/G3
  $ei:D6/G5/G3
  $ei:D6/A#5/G3
 "
 common1;
 notes "
  $ei:F#6/F#3
  $ei:F#6/A3/F#3
  $ei:F#6/C4/F#3
  $ei:A6/F#4/F#3
  $ei:A6/A4/F#3
  $ei:A6/C5/F#3
  $ei:C7/F#5/F#3
  $ei:C7/A5/F#3

  $ei:C7/G3
  $ei:C7/A#3/G3
  $ei:C7/D4/G3
  $ei:D7/G4/G3
  $ei:A#6/A#4/G3
  $ei:A#6/D5/G3
  $ei:A#6/G5/G3
  $ei:A#6/A#5/G3
 "
 common2()
 {
  notes "
   $ei:G5/D#3
   $ei:G5/A#3
   $ei:G5/D#3
   $ei:G5/A#3
   $ei:D6/D#3
   $ei:D6/A#3
   $ei:D6/D#3
   $ei:D6/A#3

   $ei:C6/F3
   $ei:C6/C4
   $ei:C6/F3
   $ei:C6/C4
   $ei:F6/F3
   $ei:F6/C4
   $ei:F6/F3
   $ei:F6/C4
  "
 }
 common2;
 notes "
  $ei:D6/F#3
  $ei:D6/C4
  $ei:D6/F#3
  $ei:F#6/C4
  $ei:F#6/F#3
  $ei:F#6/C4
  $ei:A6/F#3
  $ei:A6/C4

  $ei:A6/G3
  $ei:A6/D4
  $ei:A6/G3
  $ei:G6/D4
  $ei:D6/G3
  $ei:D6/D4
  $ei:D6/G3
  $ei:D6/D4
 "
 common2;
 notes "
  $ei:F#6/F#3
  $ei:F#6/C4
  $ei:F#6/F#3
  $ei:A6/C4
  $ei:A6/F#3
  $ei:A6/C4
  $ei:C7/F#3
  $ei:C7/C4

  $ei:C7/G3
  $ei:C7/D4
  $ei:C7/G3
  $ei:D7/D4
  $ei:A#6/G3
  $ei:A#6/D4
  $ei:A#6/G3
  $ei:A#6/D4
 "
}

chorus3()
{
 common1()
 {
  notes "
   $ei:G5/G4/D#3
   $ei:G5/G4/G3/D#3
   $ei:G5/G4/A#3/D#3
   $ei:G5/G4/D4/D#3
   $ei:D6/D5/G4/D#3
   $ei:D6/D5/A#4/D#3
   $ei:D6/D5/D5/D#3
   $ei:D6/D5/G5/D#3

   $ei:C6/C5/F3
   $ei:C6/C5/A3/F3
   $ei:C6/C5/C4/F3
   $ei:C6/C5/F4/F3
   $ei:F6/F5/A4/F3
   $ei:F6/F5/C5/F3
   $ei:F6/F5/F5/F3
   $ei:F6/F5/A5/F3
  "
 }
 common1;
 notes "
  $ei:D6/D5/F#3
  $ei:D6/D5/A3/F#3
  $ei:D6/D5/C4/F#3
  $ei:F#6/F#5/F#4/F#3
  $ei:F#6/F#5/A4/F#3
  $ei:F#6/F#5/C5/F#3
  $ei:A6/A5/F#5/F#3
  $ei:A6/A5/A5/F#3

  $ei:A6/A5/G3
  $ei:A6/A5/A#3/G3
  $ei:A6/A5/D4/G3
  $ei:G6/G5/G4/G3
  $ei:D6/D5/A#4/G3
  $ei:D6/D5/D5/G3
  $ei:D6/D5/G5/G3
  $ei:D6/D5/A#5/G3
 "
 common1;
 notes "
  $ei:F#6/F#5/F#3
  $ei:F#6/F#5/A3/F#3
  $ei:F#6/F#5/C4/F#3
  $ei:A6/A5/F#4/F#3
  $ei:A6/A5/A4/F#3
  $ei:A6/A5/C5/F#3
  $ei:C7/C6/F#5/F#3
  $ei:C7/C6/A5/F#3

  $ei:C7/C6/G3
  $ei:C7/C6/A#3/G3
  $ei:C7/C6/D4/G3
  $ei:D7/D6/G4/G3
  $ei:A#6/A#5/A#4/G3
  $ei:A#6/A#5/D5/G3
  $ei:A#6/A#5/G5/G3
  $ei:A#6/A#5/A#5/G3
 "
 common2()
 {
  notes "
   $ei:G5/G4/D#3
   $ei:G5/G4/D#4/A#3
   $ei:G5/G4/D#3
   $ei:G5/G4/D#4/A#3
   $ei:D6/D5/D#3
   $ei:D6/D5/D#4/A#3
   $ei:D6/D5/D#3
   $ei:D6/D5/D#4/A#3

   $ei:C6/C5/F3
   $ei:C6/C5/F4/C4
   $ei:C6/C5/F3
   $ei:C6/C5/F4/C4
   $ei:F6/F5/F3
   $ei:F6/F5/F4/C4
   $ei:F6/F5/F3
   $ei:F6/F5/F4/C4
  "
 }
 common2;
 notes "
  $ei:D6/D5/F#3
  $ei:D6/D5/F#4/C4
  $ei:D6/D5/F#3
  $ei:F#6/F#5/F#4/C4
  $ei:F#6/F#5/F#3
  $ei:F#6/F#5/F#4/C4
  $ei:A6/A5/F#3
  $ei:A6/A5/F#4/C4

  $ei:A6/A5/G3
  $ei:A6/A5/G4/D4
  $ei:A6/A5/G3
  $ei:G6/G5/G4/D4
  $ei:D6/D5/G3
  $ei:D6/D5/G4/D4
  $ei:D6/D5/G3
  $ei:D6/D5/G4/D4
 "
 common2;
 notes "
  $ei:F#6/F#5/F#3
  $ei:F#6/F#5/F#4/C4
  $ei:F#6/F#5/F#3
  $ei:A6/A5/F#4/C4
  $ei:A6/A5/F#3
  $ei:A6/A5/F#4/C4
  $ei:C7/C6/F#3
  $ei:C7/C6/F#4/C4

  $ei:C7/C6/G3
  $ei:C7/C6/G4/D4
  $ei:C7/C6/G3
  $ei:D7/D6/G4/D4
  $ei:A#6/A#5/G3
  $ei:A#6/A#5/G4/D4
  $ei:A#6/A#5/G3
  $ei:A#6/A#5/G4/D4
 "
}

intro; intro; intro;
beforerun1;
run1; run1; run1; run1;
chorus1;
after1chorus1;
afterchorus1_common; afterchorus1_common; afterchorus1_common;
after2chorus1;
chorus2;
decreaseOctave 1; chorus3;
