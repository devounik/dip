clc;
clear;

a = imread('C:\Users\SUMEET\OneDrive\Pictures\worldmapwallpaper.jpg');
d = double(a);
[m, n] = size(a);

w = [1, 1, 1; 1, -1, 1; 1, 1, -1];
b = zeros(m, n);

for i = 2:m-1
    for j = 2:n-1
        b(i, j) = (w(1)*d(i-1, j+1), w(2)*d(i, j+1), w(3)*d(i+1, j+1), w(4)*d(i-1, j), w(5)*d(i, j), w(6)*d(i+1, j), w(7)*d(i-1, j+1), w(8)*d(i, j+1), w(9)*d(i+1, j+1));
    end
end

x = uint8(b);

figure(1);
imshow(uint8(d));
title("Original Image");

figure(2);
imshow(uint8(x));
title("High Pass Filtered Image");
