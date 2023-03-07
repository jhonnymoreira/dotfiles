#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle Microphone
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎙️
# @raycast.packageName toggle-microphone

# Documentation:
# @raycast.description Toggle Microphone On/Off
# @raycast.author Jhonny Moreira
# @raycast.authorURL https://github.com/jhonnymoreira

-- Source: https://medium.com/macoclock/how-in-the-bleep-do-i-mute-my-mic-anywhere-on-macos-d2fa1185b13
on getMicrophoneVolume()
  input volume of (get volume settings)
end getMicrophoneVolume

on disableMicrophone()
  set volume input volume 0
  display notification with title "Microphone status" subtitle "❌" sound name "Purr"
end disableMicrophone

on enableMicrophone()
  set volume input volume 100
  display notification with title "Microphone status" subtitle "✅" sound name "Blow"
end enableMicrophone

if getMicrophoneVolume() is greater than 0 then
  disableMicrophone()
else
  enableMicrophone()
end if
