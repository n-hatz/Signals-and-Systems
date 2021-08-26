%Signals and systems
%Exercise G4

%read image
I=imread('sampleimage.bmp');
I2 = im2double(I);


Gc = discretecosinetransform(I2);  %call the functions we made
g = inversediscretecosinetransform(Gc);
imshow(g);

subplot 131; imshow(im2gray(I)); title('Original Image');
subplot 132; imshow(Gc); title('DCT');
subplot 133; imshow(g); title('IDCT');


