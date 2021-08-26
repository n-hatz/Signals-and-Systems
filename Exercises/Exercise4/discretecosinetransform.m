function Gc = discretecosinetransform(image)
%DISCRETECOSINETRANSFORM return the dct2 of image.
%   Compute dct2 using the formula given in page 360 of the book.
%   Not optimal code!
image = double(im2gray(image));

%PREALLOCATE THE MATRIX
Gc=zeros(size(image));
[M, N]=size(image);

for m=0:(M-1)
    for n=0:(N-1)
        
        if m==0
            a1=1/sqrt(M);
        else
            a1=sqrt(2/M);
        end
        
        if n==0
            a2=1/sqrt(N);
        else
            a2=sqrt(2/N);
        end
        
        
        for i=0:(M-1)
            for k=0:(N-1)
                Gc(m+1,n+1)=Gc(m+1,n+1)+image(i+1,k+1)*cos((pi*(2*i+1)*m)/(2*M))*cos((pi*(2*k+1)*n)/(2*N));
            end
        end
        
        Gc(m+1,n+1)=a1*a2*Gc(m+1,n+1);
        
    end
end

end

