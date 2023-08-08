%Clear all the variables
clear all;
%Close all the windows such as figures, GUI etc.
close all;
%Clear the screen
clc;
 
%Reading the Image
I=imread('peppers.png');
%Defining a figure window
figure(1)
%Displaying the Image
imshow(I);
 
%Converting colour image into grayscale
IG=rgb2gray(I);
%Defdining new figure window
figure(2);
%Displaying the Image
imshow(IG);
 
%Computing image negative
IN=255-IG;
%Defdining new figure window
figure(3)
%displaying the negative image;
imshow(IN);
 
%Computing logarithm of a image
% parameter c=1
c=1;
%converting datatype to double for computing logarithm
IG=double(IG);
%Computing the logarithm of image
IL=c.*log(1+IG);
%As logarithm of integeres are real numbers, hence rounding to nearest
%integer
IL=round(IL);
%Convert the data type as unsigned integer with 8 bit representation
IL=uint8(IL);
%Defdining new figure window
figure(4);
%displaying the logarithm of an image
imshow(IL);
