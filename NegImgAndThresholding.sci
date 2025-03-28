// IMAGE NEGATIVE AND THRESHOLDING
clc;
clear;

i = imread('C:\Users\SUMEET\OneDrive\Pictures\worldmapwallpaper.jpg');
i_double = double(i);

// OBTAIN THE NEGATIVE OF THE IMAGE
negative_img = 255 - i_double;

// APPLY THRESHOLDING
T = input("Enter Thresholded Value (0-255): ");
[row, column] = size(i_double);
thresholded_img = zeros(row, column);

for m = 1:row
    for n = 1:column
        if (i_double(m, n) < T)
            thresholded_img(m, n) = 0;
        else
            thresholded_img(m, n) = 255;
        end
    end
end

// DISPLAY THE IMAGES
figure(1);
imshow(uint8(i_double));
title("Original Image");

figure(2);
imshow(uint8(negative_img));
title("Negative Image");

figure(3);
imshow(uint8(thresholded_img));
title("Thresholded Image");
