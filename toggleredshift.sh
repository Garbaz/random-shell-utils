
exit 0 # Use redshift-gtk instead!

killall redshift 
if [ $? -eq 0 ]; then
    notify-send -t 1000 "Redshift stopped"
else
    notify-send -t 1000 "Redshift started"
    redshift
fi
