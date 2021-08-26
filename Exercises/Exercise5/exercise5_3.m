image = 'unipi.jpeg';

c=5;
T=10;

Input = imread(image);

K = 1/(c*T)*ones(1,c*T+1);  %impulse response
Blurred_image = imfilter(Input,K,'replicate');  %convolution

%imshow(image)
imshow(Blurred_image);