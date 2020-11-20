padname="HID 256c:006e Pad pad"
stylusname="HID 256c:006e Pen stylus"

#Rotate tablet orientation for left hand use (Buttons on the right)
xsetwacom set "$stylusname" Rotate half

#Stylus buttons
xsetwacom set "$stylusname" Button 1 1
xsetwacom set "$stylusname" Button 2 2
xsetwacom set "$stylusname" Button 3 3

#Pad buttons
xsetwacom set "$padname" Button 1  'key +ctrl +shift m -shift -ctrl'
xsetwacom set "$padname" Button 2  'key ctrl'
xsetwacom set "$padname" Button 3  'key -'
xsetwacom set "$padname" Button 8  'key +'
xsetwacom set "$padname" Button 9  'key +ctrl +shift j -shift -ctrl'
xsetwacom set "$padname" Button 10 'key tab'
xsetwacom set "$padname" Button 11 'key +ctrl y -ctrl'
xsetwacom set "$padname" Button 12 'key +ctrl z -ctrl'
xsetwacom set "$padname" Button 13 'key z'
xsetwacom set "$padname" Button 14 'key b'
xsetwacom set "$padname" Button 15 'key +shift e -shift'
xsetwacom set "$padname" Button 16 'key p'

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
