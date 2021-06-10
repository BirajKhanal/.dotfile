#!/bin/sh

# For Tablet
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "1" "key ["
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "2" "key ]"
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "3" "key +ctrl [ -ctrl"
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "8" "key +ctrl ] -ctrl"
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "9" "key +ctrl z -ctrl"
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "10" "key +ctrl +shift z -shift -ctrl"
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "11" "key +ctrl +shift + -ctrl -shift"
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "12" "key +ctrl - -ctrl"
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "13" "key +ctrl +shift i -shift -ctrl"
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "14" "key +ctrl"
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "15" "key +PgUp"
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "16" "key +PgDn"
xsetwacom set "HUION Huion Tablet Pad pad" "Button" "17" "key +ctrl +shift f -shift -ctrl"

# For Stylus
xsetwacom set "HUION Huion Tablet stylus" "Button" "3" "button +3 -3"

# To use the tablet in secondary monitor
xinput map-to-output "HUION Huion Tablet stylus" HDMI-1-1
