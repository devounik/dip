im = imread("C:\Users\Downloads\balloon.jpg");
gray_im = rgb2gray(im);

sobel_edges = edge(gray_im, "sobel");
prewitt_edges = edge(gray_im, "prewitt");

subplot(1,3,1), imshow(im), title("Original Image");
subplot(1,3,2), imshow(sobel_edges), title("Sobel Edge Detection");
subplot(1,3,3), imshow(prewitt_edges), title("Prewitt Edge Detection");
