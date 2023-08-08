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
%Defining new figure window
figure(2);
%Displaying the Gray scale Image
imshow(IG);
%Defining new figure window
figure(3);
%Display the histogram of gray scale image
imhist(IG);
 
%Compute histogram equalized image
IH=histeq(IG);
%Defining new figure window
figure(4);
%Displaying the histogram equalized image
imshow(IH);
%Defining new figure window
figure(5);
%Display the histogram of the histogram equalized image
imhist(IH);
