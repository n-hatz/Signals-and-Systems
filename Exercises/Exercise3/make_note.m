function note = make_note(n,fs,time,oct)
%Create the sound of a note.
% @param n : The number of the note in the octave, with 0 being "A" 
% and 11 being G#
% @param fs : given sampling frequency
% @param time : duration of the note in seconds
% @param oct : octave of the note. 
% We assume octave 1 has a first note A with frequency of 220Hz,
% octave 2 with 440Hz and so on. 

% Function for exercise G3
% Notes are sin signals and their frequencies are computed
% from the formula: 2^(octave number)*220*2^(note/12),
% where note's value is between 0 and 11 which correspond to
% A, A#-Bb, B, C, C#-Db, D, D#-Eb, E, F, F#-Gb, G, G#-Ab respectfully. 

t = 0:1/fs:time;	%time vector
f = 2^(oct-1)*220*2^(n/12);	%compute frequency

note = sin(2*pi*f*t); %return sin signal