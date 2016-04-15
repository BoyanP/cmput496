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

input text"dumbtasktracker-bpeychof.rhcloud.com"
input keyevent ENTER
#entered in browser
{{{timing}}}
tapnswipe /dev/input/event1 tap 688 135
microsleep 120000
tapnswipe /dev/input/event1 tap 447 965
microsleep 120000
tapnswipe /dev/input/event1 tap 588 744
microsleep 120000
input keyevent HOME

tapnswipe /dev/input/event1 tap 107 295
microsleep 1200000
#insideWebApp
{{{timing}}}
#inside the webappActivity now
tapnswipe /dev/input/event1 tap 277 148

microsleep 1200000

input text "groceries"
input event ENTER

microsleep 1200000

input text "school"
input event ENTER

microsleep 1200000

input text "chores"
input event ENTER

microsleep 1200000


tapnswipe /dev/input/event1 tap 168 440

microsleep 1200000

input text "apples"
input event ENTER

microsleep 1200000
input text "potatoes" 
input event ENTER

microsleep 1200000
input text "milk"
input event ENTER

microsleep 1200000


tapnswipe /dev/input/event1 tap 161 685
microsleep 1200000

tapnswipe /dev/input/event1 swipe 43 559 43 165 10000
microsleep 1200000
tapnswipe /dev/input/event1 tap 164 372


microsleep 1200000

input  text "study%sfor%stest"
input event ENTER

microsleep 1200000

input text "finish%sassignments"
input event ENTER

microsleep 1200000

input text "read%spapers"
input event ENTER

microsleep 1200000


tapnswipe /dev/input/event1 swipe 43 559 43 165 10000

microsleep 1200000
tapnswipe /dev/input/event1 tap 158 320 

microsleep 1200000
input text "vacuum" 
input event ENTER

microsleep 1200000
input text "wash%sdishes"
input event ENTER

microsleep 1200000 
input text "cook%sdinner"
input event ENTER

microsleep 1200000

{{{timing}}}
tapnswipe /dev/input/event1 swipe 205 703 55 703 10000
microsleep 1200000
tapnswipe /dev/input/event1 swipe 295 550 330 920  10000
microsleep 1200000
tapnswipe /dev/input/event1 tap 568 375
microsleep 1200000

tapnswipe /dev/input/event1 tap 158 320  558 445
microsleep 1200000

tapnswipe /dev/input/event1 swipe 87 394 489 782 10000
microsleep 1200000

tapnswipe /dev/input/event1 tap 108 492
microsleep 1200000
tapnswipe /dev/input/event1 tap 199 444
microsleep 1200000
tapnswipe /dev/input/event1 tap 133 376
microsleep 1200000
tapnswipe /dev/input/event1 tap 683 378

{{{timing}}}

microsleep 12000000


