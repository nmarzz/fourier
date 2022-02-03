clear; clc;

% % Define notes here
notes = {'C' 'G' 'A' 'F','Eb'}; 
freq = [261.6 391.99 440.00 349.23, 155.56]; %frequencies of notes above (in hertz)



% 
% 
% 
% This should be the minor triad 
sample_rate = 44100; % Standard wav sample rate
seconds = 10;
note = 0:(1/sample_rate):seconds; %note duration (which can be edited for length)

k = 1; % octave
c = sin(2*pi*k*261.63*note);
e = sin(2*pi*329.63*note);
eb = sin(2*pi*311.13*note);
g = sin(2*pi*392*note);

% Here is our .wav 
play = c + e + g + 0.*randn(size(g));
play = c;

% sound(c, 44100)

% 
% [data,sample_rate] = audioread('Minor_triad_on_C.wav');
% play = (data(:,1) + data(:,2))/2;
% % window = randn(3,1) * 0.001;
% % 
% play = conv(play,window);

%%%% Linearity
% play * 2 -> 2 * fft(play)




%%% Here let's transform the data
% play = play + 0.1;



% sound(c / 2)
% 
% L = length(play);
% f = fft(play);
% f = abs(f / L);
% f= f(1:floor(L/2)+1);
% 
% 
% subplot(2,1,1)
% plot(play(1:200))
% 
% subplot(2,1,2)
% plot(f)

% See 1047 hz -> top c
% 700 -> f
% 833 -> g sharp, a flat
