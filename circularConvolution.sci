// CIRCULAR CONVOLUTION
clc;
clear;

// Input Sequences
g = input("Enter 1st Sequence as a vector (e.g., [1 2 3 4]): ");
h = input("Enter 2nd Sequence as a vector (e.g., [1 -1 2]): ");

// Compute lengths
N1 = length(g);
N2 = length(h);
N = max(N1, N2);  // Choose the maximum length for circular convolution

// Zero-padding to equal lengths
N3 = N1 - N2;
if (N3 > 0)
    h = [h, zeros(1, abs(N3))];
elseif (N3 < 0)
    g = [g, zeros(1, abs(N3))];
end

// Initialize output
y = zeros(1, N);

// Perform Circular Convolution
for n = 1:N
    for i = 1:N
        j = n - i + 1;  // Compute circular index manually
        
        // Handle circular wrapping
        if (j < 1)  
            j = j + N;  // Wrap around negative indices
        end

        y(n) = y(n) + g(i) * h(j);
    end
end

// Display output
disp("Circular Convolution Output:");
disp(y);

// Time axis
t = 0:N-1;

// Plot the Circular Convolution result
figure;
subplot(2, 1, 1);
plot2d3(t, g);
title("Input Sequence g[n]");

subplot(2, 1, 2);
plot2d3(t, y);
title("Circular Convolution Output y[n]");
