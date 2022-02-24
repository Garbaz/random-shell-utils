#!/bin/bash -v
padname="HID 256c:006e Pad pad"
stylusname="HID 256c:006e Pen stylus"

#Rotate tablet orientation for left hand use (Buttons on the right)
xsetwacom set "$stylusname" Rotate half

#Stylus buttons
xsetwacom set "$stylusname" Button 1 1
xsetwacom set "$stylusname" Button 2 2
xsetwacom set "$stylusname" Button 3 3

binds=(
'key +ctrl +shift a -shift -ctrl b'                            'key +ctrl +alt 2 -ctrl -alt'
'key +ctrl z -ctrl'                                                     'key +ctrl +shift z -shift -ctrl'
'key +ctrl +shift a -shift -ctrl +ctrl r -ctrl'            'key +ctrl t -ctrl'

'key PgUp'                                                              'key PgDn'
'key +ctrl = -ctrl'                                                    'key +ctrl - -ctrl'
'key ctrl'                                                                  'key +ctrl s -ctrl'
)


#Pad buttons
#xsetwacom set "$padname" Button 1  'key +ctrl +shift m -shift -ctrl'
#xsetwacom set "$padname" Button 1  'key tab'
xsetwacom set "$padname" Button 1  ${binds[11]}
xsetwacom set "$padname" Button 2  ${binds[10]}
xsetwacom set "$padname" Button 3  ${binds[9]}
xsetwacom set "$padname" Button 8  ${binds[8]}
#xsetwacom set "$padname" Button 9  'key +ctrl +shift f -shift -ctrl'
xsetwacom set "$padname" Button 9  ${binds[7]}
xsetwacom set "$padname" Button 10 ${binds[6]}
xsetwacom set "$padname" Button 11 ${binds[5]}
xsetwacom set "$padname" Button 12 ${binds[4]}
xsetwacom set "$padname" Button 13 ${binds[3]}
xsetwacom set "$padname" Button 14 ${binds[2]}
xsetwacom set "$padname" Button 15 ${binds[1]}
xsetwacom set "$padname" Button 16 ${binds[0]}
#xsetwacom set "$padname" Button 16 'key e'


#xsetwacom set "$padname" Button 1 'key +ctrl +shift m -shift -ctrl'
#xsetwacom set "$padname" Button 2 'key x'
#xsetwacom set "$padname" Button 3 'key f'
#xsetwacom set "$padname" Button 8 'key b'
#xsetwacom set "$padname" Button 9  9
#xsetwacom set "$padname" Button 10 'key tab'
#xsetwacom set "$padname" Button 11 4          
#xsetwacom set "$padname" Button 12 5
#xsetwacom set "$padname" Button 13 'key +ctrl +shift z -shift -ctrl'
#xsetwacom set "$padname" Button 14 'key +ctrl z -ctrl'
#xsetwacom set "$padname" Button 15 'key ctrl'
#xsetwacom set "$padname" Button 16 'key e'






