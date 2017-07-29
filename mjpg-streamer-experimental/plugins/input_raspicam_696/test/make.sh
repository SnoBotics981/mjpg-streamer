#gcc -Wall -o detect_color_blobs -DDCB_DEBUG -I .. -g detect_color_blobs_main.c ../detect_color_blobs.c ../yuv420.c -ljpeg
#gcc -o detect_color_blobs -O2 -I .. -g detect_color_blobs_main.c ../detect_color_blobs.c ../yuv420.c -ljpeg

gcc -pg -o detect_color_blobs -O2 -I .. -g detect_color_blobs_main.c ../detect_color_blobs.c ../yuv420.c -ljpeg




gcc -o yuv_color_space_image -I .. -g yuv_color_space_image_main.c yuv_color_space_image.c ../yuv420.c
gcc -o convert_yuv_to_jpg -I .. -g convert_yuv_to_jpg.c ../yuv420.c jpeg_file_io.c -ljpeg
gcc -o convert_jpg_to_yuv -I .. -g convert_jpg_to_yuv.c ../yuv420.c jpeg_file_io.c -ljpeg
#gcc -o convert_jpg_to_jpg -I .. -g convert_jpg_to_jpg.c jpeg_file_io.c -ljpeg
gcc -o split_yuv -I .. -g split_yuv.c ../yuv420.c