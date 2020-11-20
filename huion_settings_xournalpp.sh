#!/bin/bash -v
padname="HID 256c:006e Pad pad"
stylusname="HID 256c:006e Pen stylus"

#Rotate tablet orientation for left hand use (Buttons on the right)
xsetwacom set "$stylusname" Rotate half

#Stylus buttons
xsetwacom set "$stylusname" Button 1 1
xsetwacom set "$stylusname" Button 2 2
xsetwacom set "$stylusname" Button 3 3

#Pad buttons
xsetwacom set "$padname" Button 1  'key +ctrl PgDn -ctrl'
xsetwacom set "$padname" Button 2  'key +ctrl PgUp -ctrl'
xsetwacom set "$padname" Button 3  'key +ctrl - -ctrl'
xsetwacom set "$padname" Button 8  'key +ctrl + -ctrl'
xsetwacom set "$padname" Button 9  'key F11'
xsetwacom set "$padname" Button 10 'key F12'
xsetwacom set "$padname" Button 11 'key +ctrl y -ctrl'
xsetwacom set "$padname" Button 12 'key +ctrl z -ctrl'
xsetwacom set "$padname" Button 13 'key +ctrl +shift g -shift -ctrl'
xsetwacom set "$padname" Button 14 'key +ctrl 1 -ctrl'
xsetwacom set "$padname" Button 15 'key +ctrl +shift e -shift -ctrl'
xsetwacom set "$padname" Button 16 'key +ctrl +shift p -shift -ctrl'

