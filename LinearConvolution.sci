// LINEAR CONVOLUTION
clc;
clear;

// INPUT SEQUENCES
x = input("Enter 1st Sequence: ");
h = input("Enter 2nd Sequence: ");

// COMPUTE SIGNAL AND CONVOLUTION LENGTH
N1 = length(x);
N2 = length(h);
N = N1 + N2 - 1;

// INITIALIZE OUTPUT
y = zeros(1, N);

// COMPUTE LINEAR CONVOLUTION
for n = 1:N
    for k = 1:N1
        if (n - k + 1 > 0 & n - k + 1 <= N2)
            y(n) = y(n) + x(k) * h(n - k + 1);
        end
    end
end

disp("Manually Computed Convolution: ");
disp(y);
disp("Scilab Computed Convolution: ");
disp(conv(x, h));

// TIME AXIS
hy = 0:N-1;

subplot(3, 1, 1);
plot2d3(hy(1:N1), x);
title("Input Sequence x[n]");

subplot(3, 1, 2);
plot2d3(hy(1:N2), h);
title("Impulse Sequence h[n]");

subplot(3, 1, 3);
plot2d3(hy, y);
title("Linear Convolution Output y[n]");
