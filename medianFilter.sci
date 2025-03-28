clc;
clear;

i = imread('C:\Users\SUMEET\OneDrive\Pictures\worldmapwallpaper.jpg');
a = double(i);

[m, n] = size(a);
w = [1, 1, 1; 1, 1, 1; 1, 1, 1] / 9;

for i = 2:m-1
    for j = 2:n-1
        x(i, j) = w(1)*a(i-1, j+1)+w(2)*a(i, j+1)+w(3)*a(i+1,j+1)+w(4)*a(i-1, j)+w(5)*a(i, j)+w(6)*a(i+1,j)+w(7)*a(i-1, j-1)+w(8)*a(i, j-1)+w(9)*a(i+1,j-1);
        b = gsort([a(i-1, j-1), a(i-1, j), a(i-1, j+1), a(i, j-1), a(i, j), a(i, j+1), a(i+1, j-1), a(i+1, j), a(i+1, j+1)]);
        x(i, j) = b(5);
    end
end

c = uint8(x);
figure(1);
imshow(i);
figure(2);
imshow(c);
