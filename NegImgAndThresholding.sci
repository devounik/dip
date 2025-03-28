// IMAGE NEGATIVE AND THRESHOLDING
clc;
clear;

// LOAD THE IMAGE
i = imread("C:\Users\SUMEET\OneDrive\Pictures\worldmapwallpaper.jpg");

// CONVERT TO DOUBLE FOR PROCESSING
i_double = double(i);

// OBTAIN NEGATIVE OF THE IMAGE
negative_img = 255 - i_double;

// APPLY THRESHOLDING
T = input("Enter Threshold Value (0-255): ");
thresholded_img = i_double;

[row, column] = size(i_double);
for i = 1:row do
    for j = 1:column do
        if thresholded_img(i, j) < T then
            thresholded_img(i, j) = 0;
        else 
            thresholded_img(i, j) = 255;
        end
    end
end

// DISPLAY THE IMAGES
figure(1);
imshow(uint8(i))
title("Original Image")

figure(2);
imshow(uint8(negative_img))
title("Negative Image")

figure(3);
imshow(uint8(thresholded_img))
title("Thresholded Image")
