rem A simple batch file for making a video from many pictures

set "FF=ffmpeg"  	:: command starting word
set "FR=2"   	 	:: Frame rate for reading pictures (frames per second)
set "SN=11"	 	:: Number of first picture
set "IMG=IMG_%%2d.jpg"	:: file name
set "QU=1"		:: MP4 Quality, 1 ist best quality, 3 is normal, 31 is strongest compression
set "OUT=out2.mp4"	:: Output filemane

%FF% -framerate %FR% -start_number %SN% -i %IMG% -shortest -codec:v mpeg4 -q:v %QU% %OUT%

pause :: wait for a keypress
