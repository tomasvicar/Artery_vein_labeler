clc;clear all;close all;


img = imread("C:\Users\vicar\Desktop\code\Artery_vein_labeler\HRF\images\01_dr.JPG");
mask = imread("C:\Users\vicar\Desktop\code\Artery_vein_labeler\HRF\manual1\01_dr.tif");

mask = mask>0;


min_len = 40;


[splitmask] = split_mask(mask,min_len);




imshow(img,[])
hold on
visboundaries(splitmask,'Color','b','LineWidth',1,'EnhanceVisibility',0)





