%Signals and systems
%Exercise G2

%x = [1 1 0 1 0 0 1 1]; %Χ (chi) in ASCII form

% 1) - 3)
x = [1 1 0 1 0 0 1 1];
dt = 0.0001;
t_max = 0.1;
t = -t_max:dt:t_max;
figure('Name','ASCII representation');
stem(x,'-r','LineWidth',1.5);   %plot original signal
xlim([0 10]);
ylim([0 1.5]);
xlabel('t')
ylabel('x(t)')
grid on

% Fourier transform of signal
Fx = fft(x);    %fft
Wx = Fx .* conj(Fx);    %
Wx = fftshift(Wx);
figure('Name','Fourier Transform');
stem(Wx,'-r','LineWidth',1.5);
xlim([-50 50]);
ylim([0 50]);
xlabel('t');
ylabel('F[x(t)]');
grid on

% 2)
% Inverse fourier transform

% Coefficients for function
coeffs = [5.00000000000000 + 0.00000000000000i,1.70710678118655 + 0.292893218813452i,0.00000000000000 + 1.00000000000000i,0.292893218813452 - 1.70710678118655i,-1.00000000000000 + 0.00000000000000i,0.292893218813452 + 1.70710678118655i,0.00000000000000 - 1.00000000000000i,1.70710678118655 - 0.292893218813452i];
s = size(coeffs,2);
IFx = inversefourierseries(coeffs,2*pi/s,s);    %

%IFx = ifft(Fx); %inverse fft
figure('Name','Inverse Fourier Transform');
stem(IFx,'-b','LineWidth',1.5);
xlim([0 10]);
ylim([0 1.5]);
grid on


