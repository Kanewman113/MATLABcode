function [out] = Note(I,T,P,D)
%Creating a note from the input variables give
% I is the instrument (harmonics, echo, etc.)
% T is type/loudness of note
% C is the pitch of the note
% D is the duration
% Sampling frequency (hz)
fs = 8000;
% Variable for beats per minute
bpm = 192;
bps = 1/(bpm/60);
D = D * bps;
% Time vector
t = 0 : 1/fs : D-1/fs;
%value for note pitch
en = 220.2*2^(P/12);
%%Types of loudness
% All other L values are for testing
switch T
    case 1 
        %L = 1;
        L =   ((2 .* t + .8).*(t < D .*.1)+(D.* .1 <= t < D * .25).*( -1 * t + 1.1) + (.85).*(D .* .25 <= t < D .* .75) + (.55));
        %L = (2 .* t + .8).*(t < (D .*.1))+(((D.* .1) <= t) | ( t < (D * .25))).*( -1 * t + 1.1) + (.85).*(((D .* .25) <= t)|(t < (D .* .75))) + (.35); 
        %Eponential decay of note
        %L = 1*(1-(1/(1.25*exp(1)))*(exp(t/D)));
        %L = exp(-t/(2.*D));
    case 2
        %% ADSR aspect of the amplitude
        % Sounds more poppy and staccato than the exponential decay and there is no
        % release
        L =   .9 .* ((2 .* t + .8).*(t < D .*.1)+(D.* .1 <= t < D * .25).*( -1 * t + 1.1) + (.85).*(D .* .25 <= t < D .* .75) + (.65));
        %L = 1;
        %L = (1-(1/(1.25*exp(1)))*(exp(t/D)));
        %L = exp(-t/(2.*D));
        %L = (2 .* t + .8).*(t < (D .*.1))+(((D.* .1) <= t) | ( t < (D * .25))).*( -1 * t + 1.1) + (.85).*(((D .* .25) <= t)|(t < (D .* .75))) + (.45);
    
    case 3
        % Creating a rest
        L = 0;
    case 4 
        %Test case
        %L = .75;
        %L = .5*(1-(1/(1.25*exp(1)))*(exp(t/D)));
        %L = .5 * ((2 .* t + .8).*(t < D .*.1)+(D.* .1 <= t < D * .25).*( -1 * t + 1.1) + (.85).*(D .* .25 <= t < D .* .75) + (.85)); 
        L = .9 .* ((3.*t + .25).*(t < D .*.25)+(D.* .25 <= t < D * .45).*(-1.25 .* t + 1.3125) + (.25).*(D .* .45 <= t < D .* .75) + (-t + 1.5).* (D .* .75 <= t <= D)); 
    case 5
        % Snare drum attack and decay
        L = (10 .* t).*(t < D .*.1)+(-10 .* t + 2).*(D .*.1< t < D .*.2)+ 0;
        
end
%% Create note
switch I
    case 1
        % Treble Clef notes
        %out = L .* cos(pi*2*(en.*t));
        out = 1 * L .* cos(pi*2*(en.*t)+ .4 * L .* cos(pi*2*(en.*(t))))+ L.* 0.4 .* cos(pi*2*((2.* en).*t)+ L .* .4 .* cos(pi*2*(2 .*en.*(t)))) + L.* .05 .* cos(pi*2*((7.* en).*t));
    case 2
        % Bass clef notes
        % Normal cosine wave
        %out = L .* cos(pi*2*(en.*t));
        out = .9 .* (L./4 .* cos(pi*2*(en.*(t)))+ L.* 1 .* cos(pi*2*((1.* en).*t)) + L.* 0.4 .* cos(pi*2*((2.* en).*t)) +  L.* .4 .* cos(pi*2*(2 .*en.*(t))) + L./8 .* cos(pi*2*((7.* en).*t)));
        %out = L .* cos(pi*2*(en.*t)) + L./4 .* cos(pi*2*(en.*(t)));
    case 3
        % Test note
        %out = 1 * L .* cos(pi*2*(en.*t));
        out = 1 * L .* cos(pi*2*(en.*t))+ L.* 0.3 .* cos(pi*2*((2.* en).*t)) + L.* .05 .* cos(pi*2*((7.* en).*t));
    case 4
        % Bell synthesis
        %out = L .* cos(pi*2*(en.*t));
        out = .7 * (L .* cos(pi*2*(en.*t) + 1/4.*cos(pi*2*(.5 * en.*t)))) + .25 * (L .* cos(pi*2*(en.*(t)) + L/4.*cos(pi*2*(.5 * en.*(t)))));
    case 5
        % Percussion
        out = 1 .*(L .* cos(pi*2*(en.*t)) + L/2 .* cos(pi*2*(en.*(t))));
end

