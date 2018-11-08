# Written by Rob Steele to capture a basic capability that is working.
# For the hardware I have one camera connected and it is shoing up as
#   /dev/video0
# I'm outputting to http://127.0.0.1:8090
# In the borowser the URL is: http://127.0.0.1:8090/?action=stream

export LD_LIBRARY_PATH=.
./mjpg_streamer -i "input_uvc.so -d /dev/video0" -o "output_http.so -w 127.0.0.1 -p 8090"


