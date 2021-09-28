# Webcasts

## About

Documentation, Processes and Tools used for Stake Webcasts (Stake Conference, Firesides, etc)

## Tech Training Library

Training videos on specific topics are available on the stake YouTube channel in the [Tech Training Library](https://youtube.com/playlist?list=PLIiF8tWWwBTyhj8urySN7l3A8VDsUWHiD) playlist.  The videos are prefixed with `<Topic> #` followed by a number, which indicates the order you should watch the videos in if you are watching them for the first time.  This is important as they build on each other and you may need knowledge from a previous video.

## Church Webcast Platform

The church operates a [Webcast Platform](https://webcast.churchofjesuschrist.org) on Microsoft Azure, a Cloud Computing Platform.  When a scheduled event is started, the platform spins up a virtual server on Microsoft Azure in the region you have the event configured to run on and provides a RTMP URL for you to stream to using the Stake Teradek device or other streaming software (OBS, XSplit, FFmpeg, etc).  When the event is done, their automation automatically shuts down and deletes the virtual server.

## OBS

[OBS](https://obsproject.com) is an open source software package for video recording and live streaming.

Training vidoes for how it is used in the stake are available on the stake YouTube channel in the [Tech Training Library](https://youtube.com/playlist?list=PLIiF8tWWwBTyhj8urySN7l3A8VDsUWHiD) playlist.

## Overlays

<img src="https://user-images.githubusercontent.com/2594126/118221139-4a256680-b43a-11eb-99fe-6badbbeca157.png" width="50%" height="50%">

Overlays with a fade-in and fade-out, like the example above, can be added to videos by running the [embed_overlay.sh](https://github.com/RedDeerAlbertaStake/Webcasts/blob/main/scripts/embed_overlay.sh) script in this repo.  The script takes 2 inputs, the video file to add the overlay to and the overlay file.  A Photoshop (PSD) [template](https://github.com/RedDeerAlbertaStake/Webcasts/blob/main/images/Banner%20Overlay%20(Template).psd) that you can use to create your overlays is also available in this repo.  The script requires [FFmpeg](https://www.ffmpeg.org) and bash so those on Windows will need to find another solution or use something like the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10) to run bash scripts on Windows.


