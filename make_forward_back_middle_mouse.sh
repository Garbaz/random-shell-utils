
make_forward_back_buttons_middle_mouse() {
    xinput set-button-map "$1" 1 2 3 4 5 6 7 2 2 10 11 12 13 14 15 16
    #xinput set-button-map "$1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
}


m570_id=$(xinput | grep "Logitech M570" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/')
make_forward_back_buttons_middle_mouse "$m570_id"
mxergo_ids=($(xinput | grep "Logitech MX Ergo" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/'))
make_forward_back_buttons_middle_mouse "${mxergo_ids[0]}"
