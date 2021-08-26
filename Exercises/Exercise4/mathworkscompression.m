%Signals and systems
%Exercise G4
%Modification of mathworks' dct image compression script

%run openExample('images/ImageCompressionWithTheDiscreteCosineTransformExample')
%in matlab terminal

%read image
I=imread('sampleimage.bmp');
%I = im2double(I);
I = double(im2gray(I));

T = dctmtx(10);
dct = @(block_struct) T * block_struct.data * T';
B = blockproc(I,[10 10],dct);

mask = [1   1   1   1   1   0   0   0   0   0
        1   1   1   1   0   0   0   0   0   0
        1   1   1   0   0   0   0   0   0   0
        1   1   0   0   0   0   0   0   0   0
        1   0   0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0   0   0];
B2 = blockproc(B,[10 10],@(block_struct) mask .* block_struct.data);

invdct = @(block_struct) T' * block_struct.data * T;
I2 = blockproc(B2,[10 10],invdct);

imshow(uint8(I));
figure
imshow(uint8(I2));