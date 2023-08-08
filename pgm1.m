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
 
%Listing first 10*10 pixels in R plane
disp(I(1:10,1:10,1));
%Listing first 10*10 pixels in G plane
disp(I(1:10,1:10,2));
%Listing first 10*10 pixels in B plane
disp(I(1:10,1:10,3));
 
%Defining a new figure window
figure(2);
%displaying R plane
imshow(I(:,:,1));
%Defining a new figure window
figure(3);
%displaying G plane
imshow(I(:,:,2));
%Defining a new figure window
figure(4);
%displaying B plane
imshow(I(:,:,3));
 
% % RGB to Gray Scale Conversion
% I1=rgb2gray(I);
% %Display Gray scale converted image
% imshow (I1)
