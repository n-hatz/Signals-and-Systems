%Signals and systems
%Exercise G3

%Q2
fs = 8000;     % Sampling frequency at 8000Hz

% To slide down by one octave, we change the last
% parameter of our make note function to 0.
% Frequencies are now half of those of Q1 for each note.

% Slide down by one octave (divide by 2)
A = make_note(0,fs,0.5,0);
Bb = make_note(1,fs,0.5,0);
B = make_note(2,fs,0.5,0);
C = make_note(3,fs,0.5,0);
Db = make_note(4,fs,0.5,0);
D = make_note(5,fs,0.5,0);
Eb = make_note(6,fs,0.5,0);
E = make_note(7,fs,0.5,0);
F = make_note(8,fs,0.5,0);
Gb = make_note(9,fs,0.5,0);
G = make_note(10,fs,0.5,0);
Ab = make_note(11,fs,0.5,0);
pause = zeros(1,0.35*fs); %Small pause (vector of zeroes)
pause_small = zeros(1,0.2*fs);  %Smaller pause
pause_tiny = zeros(1,0.05*fs);  %Even smaller pause

% Νότες that last 0.25s.
t2 = 0:1/fs:0.25;
D_fast = make_note(5,fs,0.25,0);
C_fast = make_note(3,fs,0.25,0);
E_fast = make_note(7,fs,0.25,0);
F_fast = make_note(8,fs,0.25,0);

%Notes for Beethoven's "Ode to Joy"
notes1 = [E E F G G F E D C C D E E pause D_fast D];
notes2 = [pause_small E E F G G F E D C C D E D pause C_fast C];
notes3 = [pause_small D D E C D E_fast F_fast E pause_tiny C];
notes4 = [D E_fast F_fast E pause_tiny D C D pause_tiny G];
notes5 = [pause_small E E F G G F E D C C D E D pause C_fast C];
notes = [notes1 notes2 notes3 notes4 notes5];

sound(notes,fs);
