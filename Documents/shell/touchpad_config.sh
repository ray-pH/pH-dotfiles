#! /bin/sh

# ETPS/2 Elantech Touchpad id=14
# xinput set-prop 14 291 1 # set natural scrolling
# xinput set-prop 14 283 1 # enable tapping
# xinput set-prop 'ETPS/2 Elantech Touchpad' 290 -75, -75
# xinput set-prop 'ETPS/2 Elantech Touchpad' 297 2, 3, 0, 0, 1, 2, 0
xinput set-prop 'ETPS/2 Elantech Touchpad' 'Synaptics Scrolling Distance' -75 -75
xinput set-prop 'ETPS/2 Elantech Touchpad' 'Synaptics Tap Action' 2, 3, 0, 0, 1, 2, 0
#                                  ^ set tap to lclick
#                                     ^ set double finger to middle click
