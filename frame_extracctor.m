clc;
clear ;
close all;

Video_data = VideoReader('alfy.mp4');
get(Video_data)
for img =1:Video_data.NumFrames
    filename = strcat('frame',num2str(img),'.jpg');
    VidFrames = read(Video_data, img);
    imwrite(VidFrames, filename);
end