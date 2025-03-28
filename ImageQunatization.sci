// IMAGE QUANTIZATION

clc;
clear;

// LOAD THE IMAGE
i = imread("C:\Users\SUMEET\OneDrive\Pictures\worldmapwallpaper.jpg");
i_double = double(i);

// ASK FOR NUMBER OF BITS
b = input("Enter number of quantization bits (e.g. 2, 4, 8): ");
L = 2^b; // COMPUTE NUMBER OF LEVELS

// PERFORM QUANTIZATION
Q = floor(i_double * (L / 256)) * (256 / L);

// DISPLAY ORIGINAL AND QUANTIZED IMAGES
figure(1)
imshow(uint8(i))
title("Original Image")

figure(2)
imshow(uint8(Q))
title("Quantized Image")
