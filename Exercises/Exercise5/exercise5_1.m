% Signals and systems
% Exercise G5

% 1)
c=10;   %velocity
s = -0.1:0.001:0.1;
T = 100;
constant = 5;

K = constant*abs(sin(c*T*s/2) ./ (c*T*s/2));    %|Κ^(s)|
plot(s,abs(K),'-r');
title(['Ταχύτητα = ' num2str(c) 'm/s']);
hold on