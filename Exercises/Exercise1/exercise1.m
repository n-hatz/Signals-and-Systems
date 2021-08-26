%Signals and Systems
%Exercise G1

% 1)
%Given signal is x(t)=cos100πt+cos200πt+sin500πt
%Frequencies are:
%ω1=100π rad/s, ω2=200π rad/s, ω3=500π rad/s
%Divide by 2π to convert to reqular 
%frequencies  f1, f2, f3
%f1=100π/2π=50Hz, f2=200π/2π=100Hz, f3=500π/2π=250Hz
% => fmax is f3=250Hz.
%According to the sampling theorem, the minimal sampling
%frequency is 2*fmax because Fs >= 2*fmax
% Fs>=2*250=500Hz --> Ts = 1/Fs = 1/500 = 0.002s

% 2)
%Initial signal
dt=0.001;
t_max=10;
t = -t_max:dt:t_max;
x = cos(100*pi*t) + cos(200*pi*t) + sin(500*pi*t);
figure('Name','Original Signal Representation');
plot(t,x,'-r','LineWidth',1.3);
xlabel('-10 \leq t \leq +10');
xlim([-0.1 0.1]);
ylabel('x(t)');
grid on

% 3)
%Recreate signal for Ts=0.002s (Fs=500Hz)
%x(t_max)=x(Nmax*Ts) --> Nmax = t_max/Ts
Ts = 0.002;
Nmax = t_max / Ts;
n3 = -Nmax:1:Nmax;
xs = cos(100*pi*n3*Ts) + cos(200*pi*n3*Ts) + sin(500*pi*n3*Ts);
% Initialize vector os zeros to save new signal
x3 = zeros(1,length(t));
% Generate the values of the reconstructed signal for each time instance
% within the initial time interval.
for k = 1:1:length(t)
    x3(k) = xs * sinc((t(k)-n3*Ts)/Ts)';
end
% Initial and reconstructed signal together
figure('Name','Reconstructed Signal for Ts = 0.002');
hold on
plot(t,x,'-r','LineWidth',1.5);
plot(t,x3,'-b','LineWidth',1.2);
xlabel('-10 \leq t \leq +10');
xlim([-0.1 0.1]);
ylabel('x(t) ans x3(t)');
grid on

% 4)
% Using Ts = 0.001s (smaller than maximum sampling period)
% (Ts = 0.002s, from first question).
Ts = 0.001;
Nmax = t_max / Ts;
n4 = -Nmax:1:Nmax;
% Vector with samples of initial signal
xs = cos(100*pi*n4*Ts) + cos(200*pi*n4*Ts) + sin(500*pi*n4*Ts);
x4 = zeros(1,length(t));
% Generate the values of the reconstructed signal for each time instance
% within the initial time interval.
for k = 1:1:length(t)
    x4(k) = xs * sinc((t(k)-n4*Ts)/Ts)';
end
% New signal together with the previous signals
figure('Name','Reconstructed Signal for Ts = 0.001');
hold on
plot(t,x,'-r','LineWidth',1.5);
plot(t,x3,'-b','LineWidth',1.2);
plot(t,x4,'-k','LineWidth',1.2);
xlabel('-10 \leq t \leq +10');
xlim([-0.1 0.1]);
ylabel('x(t) ans x4(t)');
grid on

% 5)
% Using Ts = 0.01s (greater than maximum sampling period)
% (Ts = 0.002s, from first question)
Ts = 0.01;
Nmax = t_max/Ts;
n5 = -Nmax:1:Nmax;
xs = cos(100*pi*n5*Ts) + cos(200*pi*n5*Ts) + sin(500*pi*n5*Ts);
x5 = zeros(1,length(t));
for k = 1:1:length(t)
    x5(k) = xs * sinc((t(k)-n5*Ts)/Ts)';
end
figure('Name','Reconstructed Signal for Ts = 0.01');
hold on
plot(t,x,'-r','LineWidth',1.5);
plot(t,x3,'-b','LineWidth',1.2);    %*
plot(t,x4,'-k','LineWidth',1.2);    %o
plot(t,x5,'-y','LineWidth',1.2);    %s
xlabel('-10 \leq t \leq +10');
xlim([-0.1 0.1]);
ylabel('x(t) ans x5(t)');
grid on
