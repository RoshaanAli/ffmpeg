
rem A simple batch file for making a video from many pictures

ffmpeg -framerate 1 -start_number 11 -i IMG_%%2d.jpg ^
-shortest -codec:v mpeg4 -q:v 3 outnew.mp4

pause :: wait for a keypress