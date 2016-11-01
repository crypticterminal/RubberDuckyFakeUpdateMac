##############################################
# Author: hack
# Purpose: fuck with people by
# opening up fakeupdate.net/apple in safari
# and maybe having it kernel panic
##############################################

tell application "Safari"
delay 5
activate # this opens safari
open location "http://www.fakeupdate.net/apple" # this takes us to the fake update page

  tell application "System Events" # basically listening for kb commands

  	delay 1 # small delay; I used it because I have a really old mac and if it takes
  	        #  too long to open safari and the page then terminal gets fullscreened
  	        #  as well, and that is not the functionality we want

    keystroke "f" using {control down, command down} # fullscreen keycode

    set x to random number from 0 to 1 # setting random number

    if x = 1 # checking if we want to press the enter key
      set dt to random number from 5 to 300 # setting a delay timer from 10 seconds to 300 seconds, or 5 minutes

	  delay dt # this is the delay timer

      keystroke return # pressing the enter key

      # return "matched" # debugging, remove hashes to uncomment
    #else # more # debugging, remove hashes to uncomment
    #  return "no match"
    end if
  end tell
end tell