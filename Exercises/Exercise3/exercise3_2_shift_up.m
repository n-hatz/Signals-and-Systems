%Signals and systems
%Exercise G3

%Q2 part 2
fs = 8000;     % Sampling frequency at 8000Hz

% To slide up by one octave, we increase
% the last parameter of our make_note
% function by one. The initial frequencies
% are now multiplied by 2, giving us the sound
% of one octave higher.

% Notes of higher octave
A = make_note(0,fs,0.5,2);
Bb = make_note(1,fs,0.5,2);
B = make_note(2,fs,0.5,2);
C = make_note(3,fs,0.5,2);
Db = make_note(4,fs,0.5,2);
D = make_note(5,fs,0.5,2);
Eb = make_note(6,fs,0.5,2);
E = make_note(7,fs,0.5,2);
F = make_note(8,fs,0.5,2);
Gb = make_note(9,fs,0.5,2);
G = make_note(10,fs,0.5,2);
Ab = make_note(11,fs,0.5,2);
pause = zeros(1,0.35*fs); %Pauses
pause_small = zeros(1,0.2*fs);  
pause_tiny = zeros(1,0.05*fs);  

% Νότες that last 0.25s.
t2 = 0:1/fs:0.25;
D_fast = make_note(5,fs,0.25,2);
C_fast = make_note(3,fs,0.25,2);
E_fast = make_note(7,fs,0.25,2);
F_fast = make_note(8,fs,0.25,2);

%Notes for Beethoven's "Ode to Joy"
notes1 = [E E F G G F E D C C D E E pause D_fast D];
notes2 = [pause_small E E F G G F E D C C D E D pause C_fast C];
notes3 = [pause_small D D E C D E_fast F_fast E pause_tiny C];
notes4 = [D E_fast F_fast E pause_tiny D C D pause_tiny G];
notes5 = [pause_small E E F G G F E D C C D E D pause C_fast C];
notes = [notes1 notes2 notes3 notes4 notes5];

sound(notes,fs);