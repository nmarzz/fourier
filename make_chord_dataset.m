% Notes in middle octave. Frequencies in Hz
clear; clc;

notes = {'C','C#','D', 'D#','E','F','F#','G','G#','A','A#','B'};
freq = [261.63, 277.18,293.66,311.13, 329.63,349.23, 369.99,392.00,415.30,440.00,466.16,493.88];


% Define chords (sharp = next letter flat)
chords = {{'C','E','G'},{'C','D#','G'},{'C','E','G#'},{'C','D#','F#'},{'C','D#','F#','A'},{'C','D#','F#','A#'},{'C','D#','G','A#'},{'C','D#','G','B'},{'C','E','F#','A#'},{'C','E','G','B'},{'C','E','G#','A#'},{'C','E','G#','B'}};
chord_names = {'Cmaj','Cmin','Caug','Cdim','Cdim7','Chalfdim7','Cmin7','Cminmaj7','Cdom7','Cmaj7','Caug7','Caugmaj7'};
% chords = [{'C','E','G'}]

% Define standard sample rate and sample times
k = 1; % octave
seconds = 1;
sample_rate = 44100; % Standard wav sample rate
sample_times= 0:(1/sample_rate):seconds; 

% Where will we save
root_path = 'chord_dataset';

% Write dataset
for i = 1:length(chords)
    ch = chords{i};
    sample = 0;
    for k = 1:numel(ch) %for loop which will create the melody        
        sample = sample + sin(2*pi*freq(strcmp(notes,ch{k}))*sample_times);
    end
    % Normalize sample
    sample = sample / max(abs(sample));

    % Write sample
    filename = char(strcat(root_path,'/',chord_names(i),'.wav'));
    audiowrite(filename,sample,sample_rate)

end

