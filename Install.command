#!/bin/sh

# change to directory of this script
cd "`dirname \"$0\"`"

# copy blueutil
osascript -e 'do shell script "mkdir -p /usr/local/bin 2>/dev/null; cp blueutil /usr/local/bin/" with administrator privileges'

sleep 1

# copy workflow to Services
unzip Toggle\ Bluetooth.workflow.zip -d ~/Library/Services/ &> /dev/null

osascript -e 'tell application "System Preferences"
    activate
    reveal anchor "shortcutsTab" of pane id "com.apple.preference.keyboard"
	end tell'
