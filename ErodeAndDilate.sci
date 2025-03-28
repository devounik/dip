//Erode and dilate

im = imread(fullpath(getIPCVpath()) + "/images/" + 'puffin.png');  

se = imcreatese('rect', 3, 3); 
dilate = imdilate(im, se); 
erode = imerode(im, se);

e = imcreatese('cross', 9, 9);
dilate1 = imdilate(im, e);  
erode2 = imerode(im, e); 

S2 = imopen(im, e); 
S3 = imclose(im, e); 

figure(1);
subplot(2, 3, 1);
imshow(dilate);
title("Dilation (Rectangular)");

subplot(2, 3, 2);
imshow(erode);
title("Erosion (Rectangular)");

subplot(2, 3, 3);
imshow(dilate1);
title("Dilation (Elliptical)");

subplot(2, 3, 4);
imshow(erode2);
title("Erosion (Elliptical)");

subplot(2, 3, 5);
imshow(im);
title("Original Image");

subplot(2, 3, 6);
imshow(S3);
title("Closing Operation");
