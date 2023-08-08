%Clear all the variables
clear all;
%Close all the windows such as figures, GUI etc.
close all;
%Clear the screen
clc;
 
%Reading the image using imread function
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
 
% Computation of Mean of all pixels of the image
M=mean2(IG);
 
%Computation of Median of all pixels of the image
Med=median(IG(:));
 
%Computation of Standard Deviation of all pixels of the image
SD=std2(IG);
 
%Computation of Variance of all pixels of the image
variance=(SD)^2;
 
%Computation of Correlation Coefficient between the gray-scale image with
%itself
r1=corr2(IG,IG);
 
%Computation of Correlation Coefficient between the gray-scale image with
%R component of original image
r2=corr2(IG,I(:,:,1));
