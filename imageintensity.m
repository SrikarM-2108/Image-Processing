clc;close all;clear all;
Read = imread("IMG_20211214_142812.jpg");
Disp = imshow("IMG_20211214_142812.jpg");
AI = imadjust(Read,[.2 .3 0; .6 .7 1],[]);
%Saving Image
imwrite(AI,'AdjustImage.jpg');
%Converting to Grayscale
GS = rgb2gray(Read);
%Converting Gray to Binary
BI = imbinarize(GS,"adaptive");
%Displaying
figure(1); 
subplot(1,2,1);imshow(Read);title('Original Image');
subplot(1,2,2);imshow(AI);title('Adjusted Intensity');
figure(2);
subplot(1,2,1);imshow(GS);title('Grayscale Image');
subplot(1,2,2);imshow(BI);title('Binary Image');
