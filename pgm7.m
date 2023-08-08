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
 
% Define mask for averaging filter
H1=1/9*[1 1 1; 1 1 1; 1 1 1];
 
%Compute the output image of averaging operation
Y1=filter2(H1,IG);
%Round the values in Y1 with nearest integer and convert the data type into
%uint8 in order to display
Y1=uint8(round(Y1))
%Defining new figure window
figure(3);
%Displaying the Gray scale Image
imshow(Y1);
 
% Define mask for averaging filter
H2=1/16*[1 2 1; 2 4 2; 1 2 1];
 
%Compute the output image of averaging operation
Y2=filter2(H2,IG);
%Round the values in Y2 with nearest integer and convert the data type into
%uint8 in order to display
Y2=uint8(round(Y1))
%Defining new figure window
figure(4);
%Displaying the Gray scale Image
imshow(Y2);
