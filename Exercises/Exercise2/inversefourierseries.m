function IFx = inversefourierseries(coefficients,ff,size)
%INVERSEFOURIERSERIES Summary of this function goes here
%   Detailed explanation goes here
N = size;
IFx =zeros(size);

for k=0:(N-1)
    for n=0:(N-1)
        IFx(k+1)=IFx(k+1)+coefficients(n+1)*exp(1i*ff*n*k); 
    end
    IFx(k+1)=(1/N)*IFx(k+1);
end

end

