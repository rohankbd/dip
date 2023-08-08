%Clear all the variables
clear all;
%Close all the windows such as figures, GUI etc.
close all;
%Clear the screen
clc;
 
%Reading the image using imread function
I=imread('peppers.png');
%Defining a figure window
figure(1);
%Displaying the Image
imshow(I);
 
%Converting colour image into grayscale
IG=rgb2gray(I);
%Defining new figure window
figure(2);
%Displaying the Gray scale Image
imshow(IG);
 
% Define mask for sharpening filter
H1=[-1 0; 0 1];
%Compute the output image of sharpening operation
Y1=filter2(H1,IG);
%Round the values in Y1 with nearest integer and convert the data type into
%uint8 in order to display
Y1=uint8(round(Y1));
%Defining new figure ;window
figure(3);
%Displaying the Gray scale Image
imshow(Y1);
 
% Define mask for averaging filter
H2=[0 -1; 1 0];
 
%Compute the output image of sharpening operation
Y2=filter2(H2,IG);
%Round the values in Y2 with nearest integer and convert the data type into
%uint8 in order to display
Y2=uint8(round(Y2));
%Defining new figure window
figure(4);
%Displaying the Grayscale Image
imshow(Y2);
 
% Define mask for sharpening filter
H3=[-1 -2 -1; 0 0 0; 1 2 1];
 
%Compute the output image of sharpening operation
Y3=filter2(H3,IG);
%Round the values in Y2 with nearest integer and convert the data type into
%uint8 in order to display
Y3=uint8(round(Y3));
%Defining new figure window
figure(5);
%Displaying the Grayscale Image
imshow(Y3);
 
H4=[-1 0 1;-2 0 2; -1 0 1];
%Compute the output image of sharpening operation
Y4=filter2(H4,IG);
%Round the values in Y2 with nearest integer and convert the data type into
%uint8 in order to display
Y4=uint8(round(Y4));
%Defining new figure window
figure(6);
%Displaying the Grayscale Image
imshow(Y4);
