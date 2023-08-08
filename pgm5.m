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
%Displaying the Image
imshow(IG);
 
%Computation of Histogram
 
%Defining a vector of size 1*256, each element for every possible pixel
%value from 0 to 255
count=zeros(1,256);
 
%Compute the Image Size
[M N]=size(IG);
 
%Computing the count of each pixel
for i=1:M
    for j=1:N
        for Gray_Level=0:255
             if IG(i,j)== Gray_Level
                 count(Gray_Level+1)= count(Gray_Level+1)+1;
             end
        end
    end
end
 
%Display the contents of count
disp(count)
 
%Defining new figure window
figure(3);
%Plotting discrete plot of frequency Vs pixel intensity 0 to 255
stem(0:255,count);
 
%Defining new figure window
figure(4);
%Displaying the Histogram of the Image
imhist(IG);
