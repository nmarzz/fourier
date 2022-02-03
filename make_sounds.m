% clear; clc;

% Define notes here
notes = {'C' 'G' 'A' 'F','Eb'}; %notes which will be used
% freq = [261.60 391.99 440.00 349.23]; %frequencies of notes above (in hertz)
freq = [261.6 391.99 440.00 349.23, 155.56]; %frequencies of notes above (in hertz)


% Determines what gets played
% melody = {'C' 'G' 'A' 'F' 'C' 'G' 'A' 'F'};
melody = {'Eb', 'C', 'G'};
a = [];


for k = 1:numel(melody) %for loop which will create the melody
    note = 0:0.00025:1.0; %note duration (which can be edited for length)
    a = [a sin(2*pi*freq(strcmp(notes,melody{k}))*note)]; %a will create the melody given variables defined above
end

sound(a)