clc;clear all;close all force;

user_name = 'Tom';

img_name = 'C:\Users\vicar\Desktop\code\Artery_vein_labeler\HRF\images\01_dr.JPG';

mask_name = replace(replace(img_name,'images','manual1'),'.JPG','.tif');


artery_vein_labeler(img_name,mask_name,user_name)






