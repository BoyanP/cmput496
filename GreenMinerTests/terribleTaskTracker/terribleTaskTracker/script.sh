#idle 
microsleep 8000000

#loading
{{{timing}}}
am start -n com.bpeychof.tasktracker/.MainActivity


microsleep 1200000

###use task tracking
{{{timing}}}
microsleep 5000000


tapnswipe /dev/input/event1 tap 283 646

input text "groceries"
input event ENTER

microsleep 1200000

input text "school"
input event ENTER

microsleep 1200000

input text "chores"
input event ENTER

microsleep 1200000

tapnswipe /dev/input/event1 swipe 572 1046 561 67 1000

tapnswipe /dev/input/event1 tap 381 245

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


tapnswipe /dev/input/event1 tap 384 737

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

tapnswipe /dev/input/event1 swipe 633 1021 628 101
microsleep 1200000

tapnswipe /dev/input/event1 tap 395 868

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
#delete school
tapnswipe /dev/input/event1 tap 380 674
microsleep 1200000

#delete chores
tapnswipe /dev/input/event1 tap 406 991
microsleep 1200000

#delete milk
tapnswipe /dev/input/event1 tap 467 814
microsleep 1200000
#delete potatoes
tapnswipe /dev/input/event1 tap 515 804
microsleep 1200000
#delete apples
tapnswipe /dev/input/event1 tap 496 804
microsleep 1200000
#delete the groceries
tapnswipe /dev/input/event1 tap 425 995

microsleep 10000000

## exit
{{{timing}}}
input keyevent HOME
