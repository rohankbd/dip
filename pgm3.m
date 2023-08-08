%Clear all the variables
clear all;
%Close all the windows such as figures, GUI etc.
close all;
%Clear the screen
clc;
 
%Reading the image
I=imread('peppers.png');
 
%Displaying the Image
imshow(I);
 
%RGB to Grayscale conversion
I1=rgb2gray(I);
%Displaying the grayscale image
figure;
imshow(I1);
%Finding dimension of the grayscale image
[M, N]= size(I1);
 
%Finding Binary image with threshold 128
I2=zeros(M,N);
for i=1:M
    for j=1:N
       if I1(i,j)>=128
           I2(i,j)=255;
       else
           I1(i,j)=0;
       end
    end
end
 
%Display the binary image
figure;
imshow(I2);
