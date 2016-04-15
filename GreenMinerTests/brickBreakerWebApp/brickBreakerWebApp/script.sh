# Wait for Wattlog
microsleep 10000000

{{{timing}}}
#get chrome up and running first
am -start com.android.chrome/com.google.android.apps.chrome.ChromeTabbedActivity
microsleep 120000
tapnswipe /dev/input/event1 tap 352 982

# open menu 
microsleep 12000000
{{{timing}}}
tapnswipe /dev/input/event1 tap 529.5 200
microsleep 1200000

input text"badbrickbreaker-bpeychof.rhcloud.com"

input keyevent ENTER
#entered in browser
microsleep 120000 
#can I change airplane mode here?
{{{timing}}}

# click on settings and add to homescreen 
tapnswipe /dev/input/event1 tap 688 135
microsleep 120000
tapnswipe /dev/input/event1 tap 447 965
microsleep 120000
tapnswipe /dev/input/event1 tap 588 744
microsleep 120000
input keyevent HOME

microsleep 120000
tapnswipe /dev/input/event1 tap 107 29

microsleep 50000

tapnswipe /dev/input/event1 tap 270 359

microsleep  12000000

tapnswipe /dev/input/event1 tap 63 333

microsleep 7000000

tapnswipe /dev/input/event1 tap 300 315

microsleep 12000000

tapnswipe /dev/input/event1 tap 213 300

microsleep 2000000

tapnswipe /dev/input/event1 tap 100 350

microsleep 10000000

tapnswipe /dev/input/event1 tap 368 344

# "Exit" Process
{{{timing}}}
microsleep 2000000
input keyevent HOME