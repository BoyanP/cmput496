#
# badBrickBreaker test
#	
# Copyright (c) 2016 Boyan Peychoff
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundationeither version 2 of the Licenseor
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If notsee <http://www.gnu.org/licenses/>.
#

#waiting for wattlog?
microsleep 1200000

{{{timing}}}

am start -n com.bpeychof.example/.MainActivity


microsleep 500000


tapnswipe /dev/input/event1 tap 442 368

microsleep  12000000

tapnswipe /dev/input/event1 tap 149 371

microsleep 7000000

tapnswipe /dev/input/event1 tap 550 395

microsleep 12000000

tapnswipe /dev/input/event1 tap 550 395

microsleep 2000000

tapnswipe /dev/input/event1 tap 550 395

microsleep 10000000

tapnswipe /dev/input/event1 tap 175 363

microsleep 4000000

tapnswipe /dev/input/event1 tap 667 369

# "Exit" Process
{{{timing}}}
microsleep 2000000
input keyevent HOME

