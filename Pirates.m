%% Intial setup 
% Reference sheet music https://musescore.com/user/2830596/scores/1421196
% Frequency of 8000 Hz
fs = 8000; 
% Table of note values
% +/- 12 moves the octave up or down
A = 0;
Bb = 1;
B = 2;
C = 3;
Db = 4;
D = 5;
Eb = 6;
E = 7;
F = 8;
Gb = 9;
G = 10;
Ab = 11;
% General overview of note
%(Instrument, Note envelope,Musical Note,Duration)
%% Line 1
% tm is treble clef measure
% bm is bass clef measure
% pm is percussion measure
% mM is mixed measure
tm1 = [Note(1,1,D,1) Note(1,1,D,.5) Note(1,1,D,1) Note(1,1,D,.5)];
tm2 = [Note(1,1,D,1) Note(1,1,D,.5) Note(1,1,D,.5) Note(1,1,D,.5) Note(1,1,D,.5)];
tm3 = [Note(1,1,D,1) Note(1,1,D,.5) Note(1,1,D,1) Note(1,1,D,.5)];
tm4 = [Note(1,1,D,1) Note(1,1,D,.5) Note(1,1,D,.5) Note(1,1,D,.5) Note(1,1,D,.5)];
tm5 = [Note(1,1,D,1) Note(1,1,D,.5) Note(1,1,D,1) Note(1,1,D,.5)];
bm5 = [Note(2,2,D-12,3)+ Note(2,2,D-24,3)];
mM5 = bm5+tm5;
tm6 = [Note(1,1,D,1) Note(1,1,D,.5) Note(1,1,D,.5) Note(1,1,A,.5) Note(1,1,C,.5)];
bm6 = [Note(2,2,D-12,1.5)+Note(2,2,D-24,1.5) Note(2,2,D-12,1.5)+Note(2,2,D-24,1.5)];
pm6 = [Note(1,3,A+12,1.5) Note(5,3,G-36,.5) Note(5,5,C-12,.5) Note(5,5,C-12,.5)];
mM6 = bm6+tm6+pm6;

mL1 = [tm1 tm2 tm3 tm4 mM5 mM6];
%% Line 2
tm1 = [Note(2,2,F-12,1)+Note(1,1,A,1)+Note(1,1,D,1) Note(2,2,F-12,1)+Note(1,1,A,1)+Note(1,1,D,1) Note(2,2,F-12,.5)+Note(1,1,A,.5)+Note(1,1,D,.5) Note(1,1,A,.5)+Note(1,1,C,.5)+Note(1,1,E,.5)];
bm1 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5)];  
pm1 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM1 = tm1+bm1+pm1; 
tm2 = [Note(1,1,Bb,1)+Note(1,1,D,1)+Note(1,1,F,1) Note(1,1,Bb,1)+Note(1,1,D,1)+Note(1,1,F,1) Note(1,1,Bb,.5)+Note(1,1,D,.5)+Note(1,1,F,.5) Note(1,1,D,.5)+Note(1,1,G,.5)]; 
bm2 = [Note(2,2,Bb-12,1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5) Note(2,2,Bb-12, 1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5)]; 
mM2 = tm2 +bm2;
tm3 = [Note(1,1,C,1)+Note(1,1,E, 1)+Note(1,1,G, 1) Note(1,1,C, 1)+Note(1,1,E,1)+Note(1,1,G,1) Note(1,1,A,.5)+Note(1,1,D,.5) Note(1,1,G -12,.5)+Note(1,1,C,.5)];  
bm3 = [Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5)]; 
mM3 = tm3+bm3;
tm4 = [Note(1,1,A,.5)+Note(1,1,C,.5) Note(1,1,A,1)+Note(1,1,D,1) Note(1,3,A,.5) Note(1,1,A,.5) Note(1,1,C,.5)];
bm4 = bm1;
pm4 = [Note(1,3,A+12,1.5) Note(5,5,C-12,.5) Note(5,3,G-36,.5) Note(5,3,A-12,.5)];
mM4 = bm4+tm4+pm4;
tm5 = [Note(2,2,F-12,1)+Note(1,1,Bb,1)+Note(1,1,D,1) Note(2,2,F-12,1)+Note(1,1,Bb,1)+Note(1,1,D,1) Note(1,1,Bb,.5)+Note(1,1,D,.5) Note(1,1,Bb,.5)+Note(1,1,E,.5)];
bm5 = bm2;
pm5 = pm1;
mM5 = bm5+tm5+pm5;
mL2 = [mM1 mM2 mM3 mM4 mM5];

%% Line 3
tm1 = [Note(1,1,A,1)+Note(1,1,C,1)+Note(1,1,F,1) Note(1,1,A,1)+Note(1,1,C,1)+Note(1,1,F,1) Note(1,1,C,.5)+Note(1,1,F,.5) Note(1,1,C,.5)+Note(1,1,G,.5)];
bm1 = [Note(2,2,F-12,1)+Note(2,2,F-24,1) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,1)+Note(2,2,F-24,1) Note(2,2,F-12,.5)+Note(2,2,F-24,.5)]; 
mM1 = tm1+bm1; 
tm2 = [Note(1,1,C,1)+Note(1,1,F,1) Note(1,1,C,1)+Note(1,1,F,1) Note(1,1,A,.5)+Note(1,1,D,.5) Note(1,1,C,.5)];
bm2 = [Note(2,2,C-12,1)+Note(2,2,C-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5)]; 
mM2 = tm2 +bm2;
tm3 = [Note(2,2,F-12,1)+Note(1,1,A,1)+Note(1,1,D,1) Note(1,3,A,1) Note(1,1,A,.5) Note(1,1,C,.5)];
bm3 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5)];  
pm3 = [Note(1,3,A+12,1.5) Note(5,5,C-12,.5) Note(5,3,A-12,.5) Note(5,5,C-12,.5)];
mM3 = tm3+bm3+pm3;
tm4 = [Note(2,2,F-12,1)+Note(1,1,A,1)+Note(1,1,D,1) Note(2,2,F-12,1)+Note(1,1,A,1)+Note(1,1,D,1) Note(1,1,A,.5)+Note(1,1,D,.5) Note(1,1,A,.5)+Note(1,1,F,.5)];
bm4 = bm3;
pm4 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM4 = tm4+bm4+pm4;
tm5 = [Note(1,1,Bb,1)+Note(1,1,D,1)+Note(1,1,G ,1) Note(1,1,Bb,1)+Note(1,1,D,1)+Note(1,1,G ,1) Note(1,1,D,.5)+Note(1,1,G ,.5) Note(1,1,D,.5)+Note(1,1,A+12 ,.5)];
bm5 = [Note(2,2,Bb-12,1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5) Note(2,2,Bb-12,1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5)]; 
mM5 = tm5+bm5;

mL3 = [mM1 mM2 mM3 mM4 mM5];
%% Line 4
tm1 = [Note(1,1,E,1)+Note(1,1,G,1)+ Note(1,1,Bb+12,1) Note(1,1,E,1)+Note(1,1,G,1)+ Note(1,1,Bb+12,1) Note(1,1,F,.5)+Note(1,1,A+12,.5) Note(1,1,E,.5)+Note(1,1,G,.5)];
bm1 = [Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)]; 
mM1 = bm1+tm1;
tm2 = [Note(1,1,F,.5)+Note(1,1,A+12,.5) Note(1,1,D,1) Note(1,3,A,.5) Note(1,1,D,.5) Note(1,1,E,.5)];
bm2 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5)];  
pm2 = [Note(1,3,A+12,1.5) Note(5,3,A-12,.5) Note(5,5,C-12,.5) Note(5,3,A-12,.5)];
mM2 = bm2+tm2+pm2;
tm3 = [Note(1,1,Bb,1)+Note(1,1,D,1)+Note(1,1,F ,1) Note(1,1,Bb,1)+Note(1,1,D,1)+Note(1,1,F ,1) Note(1,1,Bb,1)+Note(1,1,D,1)+Note(1,1,G ,1)];
bm3 = [Note(2,2,Bb-12,1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5) Note(2,2,Bb-12, 1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5)]; 
pm3 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM3 = bm3+tm3+pm3;
tm4 = [Note(1,1,F,.5)+Note(1,1,A+12,.5) Note(1,1,D,1) Note(1,3,A,.5) Note(1,1,D,.5) Note(1,1,F,.5)];
bm4 = bm2;
mM4 = bm4+tm4;
tm5 = [Note(1,1,A,1)+Note(1,1,Db,1)+Note(1,1,E,1) Note(1,1,A,1)+Note(1,1,Db,1)+Note(1,1,E,1) Note(1,1,D,.5)+Note(1,1,F,.5) Note(1,1,Bb,.5)+Note(1,1,D,.5)];
bm5 = [Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5)]; 
mM5 = bm5+tm5;

mL4 = [mM1 mM2 mM3 mM4 mM5];

%% Line 5
tm1 = [Note(1,1,A,1)+Note(1,1,Db,1)+Note(1,1,E,1) Note(1,3,A,1) Note(1,1,A+12,.5) Note(1,1,C+12,.5)];
bm1 = [Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5)]; 
pm1 = [Note(1,3,A+12,1.5) Note(5,3,A-12,.5) Note(5,5,C-12,.5) Note(5,3,A-12,.5)];
mM1 = bm1+tm1+pm1;
tm2 = [Note(1,1,F,1)+Note(1,1,A+12,1)+Note(1,1,D+12,1) Note(1,1,F,1)+Note(1,1,A+12,1)+Note(1,1,D+12,1) Note(1,1,F,.5)+Note(1,1,A+12,.5)+Note(1,1,D+12,.5) Note(1,1,A+12,.5)+Note(1,1,C+12,.5)+Note(1,1,E+12,.5)];
bm2 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5)];  
pm2 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM2 = bm2+tm2+pm2;
tm3 = [Note(1,1,Bb+12,1)+Note(1,1,D+12,1)+Note(1,1,F+12,1) Note(1,1,Bb+12,1)+Note(1,1,D+12,1)+Note(1,1,F+12,1) Note(1,1,Bb+12,.5)+Note(1,1,D+12,.5)+Note(1,1,F+12,.5) Note(1,1,D+12,.5)+Note(1,1,G+12,.5)];
bm3 = [Note(2,2,Bb-12,1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5) Note(2,2,Bb-12, 1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5)]; 
pm3 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM3 = bm3+tm3+pm3;
tm4 = [Note(1,1,A+12,1)+Note(1,1,C+12,1)+Note(1,1,E+12,1) Note(1,1,A+12,1)+Note(1,1,C+12,1)+Note(1,1,E+12,1) Note(1,1,A+12,.5)+Note(1,1,D+12,.5) Note(1,1,G,.5)+Note(1,1,C+12,.5)];
bm4 = bm1;
pm4 = pm3;
mM4 = bm4+tm4+pm4;
tm5 = [Note(1,1,C+12,.5) Note(1,1,D+12,1) Note(1,3,C+12,.5) Note(1,1,A+12,.5) Note(1,1,C+12,.5)];
bm5 = bm2;
pm5 = [Note(5,5,C-12,.5) Note(1,3,A+12,1) Note(5,3,A-12,.5) Note(5,5,C-12,.5) Note(5,3,A-12,.5)];
mM5 = bm5+tm5+pm5;

mL5 = [mM1 mM2 mM3 mM4 mM5];

%% Line 6
tm1 = [Note(1,1,F,1)+Note(1,1,Bb+12,1)+Note(1,1,D+12,1) Note(1,1,F,1)+Note(1,1,Bb+12,1)+Note(1,1,D+12,1) Note(1,1,Bb+12,.5)+ Note(1,1,D+12,.5) Note(1,1,Bb+12,.5)+ Note(1,1,E+12,.5)];
bm1 = [Note(2,2,Bb-12,1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5) Note(2,2,Bb-12, 1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5)]; 
pm1 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM1 = bm1+tm1+pm1;
tm2 = [Note(1,1,A+12,1)+Note(1,1,C+12,1)+Note(1,1,F+12,1) Note(1,1,A+12,1)+Note(1,1,C+12,1)+Note(1,1,F+12,1) Note(1,1,C+12,.5)+Note(1,1,F+12,.5) Note(1,1,C+12,.5)+Note(1,1,G+12,.5)];
bm2 = [Note(2,2,F-12,1)+Note(2,2,F-24,1) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,1)+Note(2,2,F-24,1) Note(2,2,F-12,.5)+Note(2,2,F-24,.5)]; 
pm2 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM2 = tm2+bm2+pm2;
tm3 = [Note(1,1,C+12,1)+Note(1,1,E+12,1) Note(1,1,C+12,1)+Note(1,1,E+12,1) Note(1,1,A+12,.5)+Note(1,1,D+12,.5) Note(1,1,C+12,.5)];
bm3 = [Note(2,2,C-12,1)+Note(2,2,C-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5)]; 
pm3 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM3 = bm3+tm3+pm3;
tm4 = [Note(1,1,F,1)+Note(1,1,A+12,1)+Note(1,1,D+12,1) Note(1,3,A,1) Note(1,1,A+12,.5) Note(1,1,C+12,.5)];
bm4 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5)];
pm4 = [Note(5,5,C-12,.5) Note(5,3,G-36,1) Note(5,5,C-12,.5) Note(5,3,G-36,.5) Note(5,5,C-12,.5)];
mM4 = tm4+bm4+pm4;
tm5 = [Note(1,1,F,1)+Note(1,1,A+12,1)+Note(1,1,D+12,1) Note(1,1,F,1)+Note(1,1,A+12,1)+Note(1,1,D+12,1) Note(1,1,A+12,.5)+Note(1,1,D+12,.5) Note(1,1,A+12,.5)+Note(1,1,E+12,.5)];
bm5 = bm4;
pm5 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM5 = tm5+bm5+pm5;
tm6 = [Note(1,1,Bb+12,1)+Note(1,1,D+12,1)+Note(1,1,G+12,1) Note(1,1,Bb+12,1)+Note(1,1,D+12,1)+Note(1,1,G+12,1) Note(1,1,D+12,.5)+Note(1,1,G+12,.5) Note(1,1,D+12,.5)+Note(1,1,A+24,.5)];
bm6 = bm1;
pm6 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM6 = tm6+bm6+pm6;

mL6 = [mM1 mM2 mM3 mM4 mM5 mM6];

%% Line 7
% Page 2
tm1 = [Note(1,1,D+12,1)+Note(1,1,G+12,1)+Note(1,1,Bb+24,1) Note(1,1,D+12,1)+Note(1,1,G+12,1)+Note(1,1,Bb+24,1) Note(1,1,F+12,.5)+Note(1,1,A+24,.5) Note(1,1,E+12,.5)+Note(1,1,G+12,.5)];
bm1 = [Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)]; 
pm1 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM1 = tm1+bm1+pm1;
tm2 = [Note(1,1,F+12,.5)+Note(1,1,A+24,.5) Note(1,1,D+12,1) Note(1,3,D+12,.5) Note(1,1,D+12,.5) Note(1,1,E+12,.5)];
bm2 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5)];
pm2 = [Note(5,5,C-12,.5) Note(5,3,G-36,1) Note(5,3,A-12,.5) Note(5,5,C-12,.5) Note(5,3,A-12,.5)];
mM2 = tm2+bm2+pm2;
tm3 = [Note(1,1,Bb+12,1)+Note(1,1,D+12,1)+Note(1,1,F+12,1) Note(1,1,Bb+12,1)+Note(1,1,D+12,1)+Note(1,1,F+12,1) Note(1,1,Bb+12,1)+Note(1,1,D+12,1)+Note(1,1,G+12,1)];
bm3 = [Note(2,2,Bb-12,1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5) Note(2,2,Bb-12, 1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5)]; 
pm3 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM3 = tm3+bm3+pm3;
tm4 = [Note(1,1,F+12,.5)+Note(1,1,A+24,.5) Note(1,1,D+12,1) Note(1,3,D+12,.5) Note(1,1,D+12,.5) Note(1,1,F+12,.5)];
bm4 = bm2;
pm4 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM4 = bm4+tm4+pm4;
tm5 = [Note(1,1,A+12,1)+Note(1,1,Db+12,1)+Note(1,1,E+12,1) Note(1,1,A+12,1)+Note(1,1,Db+12,1)+Note(1,1,E+12,1) Note(1,1,D+12,.5) Note(1,1,C+12,.5)];
bm5 = [Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)]; 
pm5 = [Note(5,5,C-12,.5) Note(5,3,G-36,.5) Note(5,5,C-12,.5) Note(5,3,G-36,.5) Note(5,5,C-12,.5) Note(5,3,G-36,.5)];
mM5 = bm5+tm5+pm5;
tm6 = [Note(1,1,A+12,1)+Note(1,1,D+12,1) Note(1,1,A+12,1)+Note(1,1,D+12,1) Note(1,1,A+12,1)+Note(1,1,C+12,1)+Note(1,1,E+12,1)];
bm6 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,1)+Note(2,2,D-24,1) ];
pm6 = [Note(5,5,C-12,.5) Note(5,3,G-36,.5) Note(5,5,C-12,.5) Note(5,3,G-36,.5) Note(5,5,C-12,.5) Note(5,3,G-36,.5)];
mM6 = bm6+tm6+pm6;
    
mL7 =  [mM1 mM2 mM3 mM4 mM5 mM6];

%% Line 8
tm1 = [Note(1,1,C+12,1)+Note(1,1,D+12,1)+Note(1,1,F+12,1) Note(1,1,F+12,.5) Note(1,1,F+12,.5) Note(1,1,Bb+12,1)+Note(1,1,D+12,1)+Note(1,1,G+12,1)];
bm1 = [Note(2,2,C-12,1)+Note(2,2,C-24,1) Note(2,2,C-12,1)+Note(2,2,C-24,1) Note(2,2,Bb-12,1)+Note(2,2,Bb-24,1)];
pm1 = [Note(5,5,C-12,.5) Note(5,3,G-36,.5) Note(5,5,C-12,.5) Note(5,3,G-36,.5) Note(5,5,C-12,.5) Note(5,3,G-36,.5)];
mM1 = bm1+tm1+pm1;
tm2 = [Note(1,1,D+12,2)+Note(1,1,A+24,2) Note(1,1,A+12,.5)+Note(1,1,E+12,.5) Note(1,1,A+12,.5)+Note(1,1,D+12,.5)];
bm2 = [Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5)]; 
pm2 = [Note(5,5,C-12,.5) Note(5,3,G-36,2.5)];
mM2 = tm2+bm2+pm2;
tm3 = [Note(1,1,A+12,2) Note(1,3,A+12,1)];
bm3 = bm2;
pm3 = [Note(1,3,A+12,2) Note(5,5,C-12,.5) Note(5,5,C-12,.5)];
mM3 = tm3+bm3+pm3;
tm4 = [Note(1,1,D+12,2)+Note(1,1,G+12,2)+Note(1,1,Bb+24,2) Note(1,1,Bb+12,.5)+Note(1,1,F+12,.5) Note(1,1,Bb+12,.5)+Note(1,1,D+12,.5)];
bm4 = [Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)]; 
pm4 = [Note(5,5,C-12,.5) Note(1,3,A+12,2.5)];
mM4 = bm4+tm4+pm4;
tm5 = [Note(1,1,Bb+12,2) Note(1,3,A+12,1)];
bm5 = bm4;
pm5 = pm3;
mM5 = tm5+bm5+pm5;
tm6 = [Note(1,1,A,1.5)+Note(1,1,D,1.5) Note(2,2,F-12,1.5)+Note(1,1,D,1.5)];
bm6 = bm2;
pm6 = pm4;
mM6 = tm6+bm6+pm6;

mL8 = [mM1 mM2 mM3 mM4 mM5 mM6];

%% Line 9
tm1 = [Note(2,2,E-12,1.5)+Note(1,1,A,1.5)+Note(1,1,Db,1.5) Note(1,3,A,.5) Note(1,1,F,.5) Note(1,1,G,.5)];
bm1 = [Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)]; 
pm1 = [Note(1,3,A+12,1.5) Note(5,3,G-36,.5) Note(5,5,C-12,.5) Note(5,5,C-12,.5)];
mM1 = tm1+bm1+pm1;
tm2 = [Note(1,1,D,1)+Note(1,1,F,1)+Note(1,1,A+12,1) Note(1,1,D,1)+Note(1,1,F,1)+Note(1,1,A+12,1) Note(1,1,D,1)+Note(1,1,F,1)+Note(1,1,A+12,1)];
bm2 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5)];
pm2 = [Note(5,5,C-12,.5) Note(1,3,A+12,2.5)];
mM2 = tm2+bm2+pm2;
tm3 = [Note(1,1,D,.5)+Note(1,1,F,.5)+Note(1,1,Bb+12,.5) Note(1,1,D,1)+Note(1,1,F,1)+Note(1,1,A+12,1) Note(1,3,A,1.5)];
bm3 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5)];
pm3 = pm1;
mM3 = bm3+tm3+pm3;
tm4 = [Note(1,1,C,1)+Note(1,1,E,1)+Note(1,1,G,1) Note(1,1,C,1)+Note(1,1,E,1)+Note(1,1,G,1) Note(1,1,C,1)+Note(1,1,E,1)+Note(1,1,G,1)];
bm4 = [Note(2,2,C-12,1)+Note(2,2,C-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,1)+Note(2,2,C-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5)];
pm4 = pm2;
mM4 = tm4+bm4+pm4;
tm5 = [Note(1,1,C,.5)+Note(1,1,E,.5)+Note(1,1,G,.5) Note(1,1,C,1)+Note(1,1,F,1)+Note(1,1,A+12,1) Note(1,3,A,1.5)];
bm5 = [Note(2,2,F-12,1)+Note(2,2,F-24,1) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,.5)+Note(2,2,F-24,.5)];
pm5 = pm1;
mM5 = bm5+tm5+pm5;

mL9 = [mM1 mM2 mM3 mM4 mM5];

%% Line 10
mM1 = mM2;
mM2 = mM3;
tm3 = [Note(1,1,Db,1)+Note(1,1,E,1)+Note(1,1,G,1) Note(1,1,Db,1)+Note(1,1,F,1) Note(1,1,A,1)+Note(1,1,E,1)];
bm3 = [Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)]; 
pm3 = [Note(5,5,C-12,.5) Note(1,3,A+12,2.5)];
mM3 = tm3+bm3+pm3;
tm4 = [Note(2,2,F-12,1)+Note(1,1,A,1)+Note(1,1,D,1) Note(1,3,D,1) Note(1,1,D,.5) Note(1,1,E,.5)];
bm4 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5)];
mM4 = tm4+bm4;
tm5 = [Note(1,1,A,2)+Note(1,1,D,2)+Note(1,1,F,2) Note(1,1,G,.5) Note(1,1,A+12,.5)];
bm5 = bm4;
mM5 = tm5+bm5;

mL10 = [mM1 mM2 mM3 mM4 mM5];

%% Line 11
tm1 = [Note(1,1,C,1)+Note(1,1,G,1) Note(1,1,C,1)+Note(1,1,F,1) Note(1,1,C,1)+Note(1,1,E,1)];
bm1 = [Note(2,2,C-12,1)+Note(2,2,C-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,.5)+Note(2,2,C-24,.5)];
mM1 = bm1+tm1;
tm2 = [Note(1,1,A,1)+Note(1,1,C,1)+Note(1,1,F,1) Note(1,1,A,1)+Note(1,1,C,1)+Note(1,1,G,1) Note(1,1,A,1)+Note(1,1,C,1)+Note(1,1,A+12,1)];
bm2 = [Note(2,2,F-12,1)+Note(2,2,F-24,1) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,.5)+Note(2,2,F-24,.5)];
mM2 = tm2+bm2;
tm3 = [Note(1,1,C,1)+Note(1,1,E,1)+Note(1,1,G,1) Note(1,3,F,1) Note(1,1,F,.5) Note(1,1,G,.5)];
bm3 = bm1;
mM3 = tm3+bm3;
tm4 = [Note(1,1,C,1)+Note(1,1,F,1)+Note(1,1,A+12,1) Note(1,3,F,1) Note(1,1,G,.5) Note(1,1,F,.5)];
bm4 = bm2;
mM4 = bm4+ tm4;
tm5 = [Note(1,1,Db,1)+Note(1,1,E,1) Note(1,1,C,1)+Note(1,1,F,1) Note(1,1,C,1)+Note(1,1,E,1)];
bm5 = [Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5)];
mM5 = bm5+tm5;

mL11 = [mM1 mM2 mM3 mM4 mM5];

%% Line 12
tm1 = [Note(2,2,F-12,1)+Note(1,1,A,1)+Note(1,1,D,1) Note(1,3,E,1) Note(1,1,E,.5) Note(1,1,C,.5)];
bm1 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5)];
mM1 = tm1+bm1;
tm2 = [Note(2,2,F-12,1)+Note(1,1,A,1)+Note(1,1,D,1) Note(1,3,E,1) Note(1,1,D+12,.5) Note(1,1,E+12,.5)];
bm2 = bm1;
mM2 = bm2+tm2;
tm3 = [Note(1,1,A+12,1)+Note(1,1,D+12,1)+Note(1,1,F+12,1) Note(1,3,E,1) Note(1,1,E+12,.5) Note(1,1,F+12,.5)];
bm3 = bm1;
mM3 = tm3+bm3;
tm4 = [Note(1,1,C+12,1)+Note(1,1,G+12,1) Note(1,1,C+12,1)+Note(1,1,F+12,1) Note(1,1,C+12,1)+Note(1,1,G+12,1)];
bm4 = [Note(2,2,C-12,1)+Note(2,2,C-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,.5)+Note(2,2,C-24,.5)];
mM4 = tm4+bm4;
tm5 = [Note(1,1,F+12,1)+Note(1,1,A+24,1) Note(1,1,C+12,1)+Note(1,1,G+12,1) Note(1,1,C+12,1)+Note(1,1,F+12,1)];
bm5 = [Note(2,2,F-12,1)+Note(2,2,F-24,1) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,.5)+Note(2,2,F-24,.5)];
mM5 = bm5+tm5;
tm6 = [Note(1,1,F,1)+Note(1,1,Bb+12,1)+Note(1,1,D+12,1) Note(1,3,E,1) Note(1,1,D+12,.5) Note(1,1,E+12,.5)];
bm6 = [Note(2,2,Bb-12,1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5)];
mM6 = bm6+tm6;

mL12 = [mM1 mM2 mM3 mM4 mM5 mM6];

%% Line 13
% Page 3
tm1 = [Note(1,1,A+12,1)+Note(1,1,D+12,1)+Note(1,1,F+12,1) Note(1,1,A+12,1)+Note(1,1,D+12,1)+Note(1,1,G+12,1) Note(1,1,D+12,1)+Note(1,1,A+24,1)];
bm1 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5)];
mM1 = bm1+tm1;
tm2 = [Note(1,1,Bb+12,1)+Note(1,1,D+12,1)+Note(1,1,Bb+24,1) Note(1,1,Bb+12,1)+Note(1,1,D+12,1) Note(1,1,Bb+12,1)+Note(1,1,G+12,1)];
bm2 = [Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)  Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)]; 
mM2 = bm2+tm2;
tm3 = [Note(1,1,A+12,1)+Note(1,1,F+12,1) Note(1,3,F+12,1) Note(1,1,G+12,.5) Note(1,1,E+12,.5)];
bm3 = [Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5)];
mM3 = bm3+tm3;
tm4 = [Note(1,1,A+12,1)+Note(1,1,D+12,1) Note(1,3,F+12,1) Note(1,1,E+12,.5) Note(1,1,Db+12,.5)];
bm4 = bm3;
mM4 = tm4+bm4;

mL13 = [mM1 mM2 mM3 mM4];

%% Line 14
tm1 = [Note(1,1,D+12,1)+Note(1,1,F+12,1)+Note(1,1,A+24,1) Note(1,3,G+12,2)];
bm1 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5)];
mm1 = [Note(1,1,A,.25) Note(1,1,D,.25) Note(1,1,A+12,.25) Note(1,1,D+12,.25) Note(1,1,F+12,.25) Note(1,1,A+24,.25) Note(1,1,D+24,.25) Note(1,1,F+24,.25) Note(1,1,A+36,.25) Note(1,1,D+36,.25) Note(1,1,F+36,.25) Note(1,1,A+48,.25)];
mM1 = mm1+bm1+tm1;
tm2 = [Note(1,1,D+12,1)+Note(1,1,G+12,1)+Note(1,1,Bb+24,1) Note(1,3,G+12,2)];
bm2 = [Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)  Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)];
mm2 = [Note(2,2,F-12,.25) Note(1,1,Bb,.25) Note(1,1,F,.25) Note(1,1,Bb+12,.25) Note(1,1,D+12,.25) Note(1,1,F+12,.25) Note(1,1,Bb+24,.25) Note(1,1,D+24,.25) Note(1,1,F+24,.25) Note(1,1,C+36,.25) Note(1,1,E+36,.25) Note(1,1,G+36,.25)];
mM2 = mm2+bm2+tm2;

mL14 = [mM1 mM2];

%% Line 15
tm1 = [Note(1,1,C+12,1)+Note(1,1,F+12,1)+Note(1,1,A+24,1) Note(1,1,C+12,1)+Note(1,1,F+12,1)+Note(1,1,A+24,1) Note(1,1,C+12,1)+Note(1,1,F+12,1)+Note(1,1,A+24,1)];
bm1 = [Note(2,2,F-12,1)+Note(2,2,F-24,1) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,1)+Note(2,2,F-24,1) Note(2,2,F-12,.5)+Note(2,2,F-24,.5)];
mm1 = [Note(4,1,F,.25) Note(4,1,C+12,.25) Note(4,1,F+12,.25) Note(4,1,C+24,.25) Note(4,1,F+24,.25) Note(4,1,A+36,.25) Note(4,1,C+36,.25) Note(4,1,F+36,.25) Note(4,1,A+48,.25) Note(4,1,C+48,.25) Note(4,1,C+48,.25) Note(4,1,C+48,.25)];
mM1 = mm1 +bm1 +tm1;
tm2 = [Note(1,1,C+12,.5)+Note(1,1,E+12,.5)+Note(1,1,A+24,.5) Note(1,1,C+12,1)+Note(1,1,E+12,1)+Note(1,1,G+12,1) Note(1,3,A,1.5)];
bm2 = [Note(2,2,C-12,1)+Note(2,2,C-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,.5)+Note(2,2,C-24,.5)];
mm2 = [Note(4,1,G-12,.25) Note(4,1,C,.25) Note(4,1,G,.25) Note(4,1,C+12,.25) Note(4,1,E+12,.25) Note(4,1,G+12,.25) Note(4,1,C+24,.25) Note(4,1,E+24,.25) Note(4,1,G+24,.25) Note(4,1,C+36,.25) Note(4,1,E+36,.25) Note(4,1,G+36,.25)];
mM2 = mm2+bm2+tm2;

mL15 = [mM1 mM2];

%% Line 16
tm1 = [Note(1,1,Bb+12,1)+Note(1,1,D+12,1)+Note(1,1,G+12,1) Note(1,3,G+12,2)];
bm1 = [Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)  Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)];
mm1 = [Note(4,1,D-12,.25) Note(4,1,G-12,.25) Note(4,1,D,.25) Note(4,1,G,.25) Note(4,1,D+12,.25) Note(4,1,G+12,.25) Note(4,1,Bb+24,.25) Note(4,1,D+24,.25) Note(4,1,G+24,.25) Note(4,1,Bb+36,.25) Note(4,1,D+36,.25) Note(4,1,G+36,.25)];
mM1 = tm1+bm1+mm1;
tm2 = [Note(1,1,A+12,1)+Note(1,1,D+12,1)+Note(1,1,F+12,1) Note(1,3,G+12,2)];
bm2 = [Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5)];
mm2 = [Note(4,1,D-12,.25) Note(4,1,A,.25) Note(4,1,D,.25) Note(4,1,A+12,.25) Note(4,1,D+12,.25) Note(4,1,F+12,.25) Note(4,1,A+24,.25) Note(4,1,D+24,.25) Note(4,1,F+24,.25) Note(4,1,A+36,.25) Note(4,1,D+36,.25) Note(4,1,F+36,.25)];
mM2 = bm2+mm2+tm2;

mL16 = [mM1 mM2];

%% Line 17
tm1 = [Note(1,1,A+12,1)+Note(1,1,F+12,1)  Note(1,1,A+12,1)+Note(1,1,G+12,1) Note(1,1,A+12,1)+Note(1,1,E+12,1)];
bm1 = [Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5)];
mm1 = [Note(4,1,E,.25) Note(4,1,A+12,.25) Note(4,1,E+12,.25) Note(4,1,A+24,.25) Note(4,1,E+24,.25) Note(4,1,G+24,.25) Note(4,1,C+36,.25) Note(4,1,E+36,.25) Note(4,1,G+36,.25) Note(4,1,C+48,.25) Note(4,1,E+48,.25) Note(4,1,E+48,.25)];
mM1 = tm1+mm1+bm1;
tm2 = [Note(1,1,F,1.5)+Note(1,1,A+12,1.5)+Note(1,1,D+12,1.5) Note(1,1,E+12,.5) Note(1,1,F+12,.5) Note(1,1,G+12,.5)];
bm2 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5)];
mm2 = [Note(4,1,A,.25) Note(4,1,D,.25) Note(4,1,A+12,.25) Note(4,1,D+12,.25) Note(4,1,F+12,.25) Note(4,1,A+24,.25) Note(4,1,D+24,.25) Note(4,1,F+24,.25) Note(4,1,A+36,.25) Note(4,1,D+36,.25) Note(4,1,F+48,.25) Note(4,1,A+48,.25)];
mM2 = tm2+mm2+bm2;

mL17 = [mM1 mM2];

%% Line 18
tm1 = [Note(1,1,D+12,1.5)+Note(1,1,F+12,1.5)+Note(1,1,A+24,1.5) Note(1,1,D+12,.5) Note(1,1,E+12,.5) Note(1,1,F+12,.5)];
bm1 = [Note(2,2,D-12,1)+Note(2,2,D-24,1) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5)];
mm1 = [Note(4,1,F+36,.25) Note(4,1,D+36,.25) Note(4,1,A+36,.25) Note(4,1,F+24,.25) Note(4,1,D+24,.25) Note(4,1,A+24,.25) Note(4,1,F+12,.25) Note(4,1,D+12,.25) Note(4,1,A+12,.25) Note(4,1,D,.25) Note(4,1,A,.25) Note(4,1,D-12,.25)];
mM1 = tm1+bm1+ mm1;
tm2 = [Note(1,1,D+12,1.5)+Note(1,1,F+12,1.5)+Note(1,1,Bb+24,1.5) Note(1,1,D+12,.5) Note(1,1,E+12,.5) Note(1,1,F+12,.5)];
bm2 = [Note(2,2,Bb-12,1)+Note(2,2,Bb-24,1) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5) Note(2,2,Bb-12,.5)+Note(2,2,Bb-24,.5)];
mm2 = [Note(4,1,D+36,.25) Note(4,1,Bb+36,.25) Note(4,1,F+24,.25) Note(4,1,D+24,.25) Note(4,1,Bb+24,.25) Note(4,1,F+12,.25) Note(4,1,Bb+12,.25) Note(4,1,F,.25) Note(4,1,Bb,.25) Note(4,1,F-12,.25) Note(4,1,Bb-12,.25) Note(4,1,F-24,.25)];
mM2 = tm2+mm2+bm2;

mL18 = [mM1 mM2];

%% Line 19
% Page 4
tm1 = [Note(1,1,C+12,1)+Note(1,1,F+12,1)+Note(1,1,A+12,1) Note(1,1,C+12,1)+Note(1,1,F+12,1)+Note(1,1,A+12,1) Note(1,1,F+12,1)+Note(1,1,C+24,1)];
bm1 = [Note(2,2,F-12,1)+Note(2,2,F-24,1) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,.5)+Note(2,2,F-24,.5) Note(2,2,F-12,.5)+Note(2,2,F-24,.5)];
mm1 = [Note(4,1,C+48,.25) Note(4,1,A+48,.25) Note(4,1,F+36,.25) Note(4,1,C+36,.25) Note(4,1,A+36,.25) Note(4,1,F+24,.25) Note(4,1,C+24,.25) Note(4,1,A+24,.25) Note(4,1,C+12,.25) Note(4,1,F,.25) Note(4,1,C,.25) Note(4,1,F-12,.25)];
mM1 = bm1+tm1+mm1;
tm2 = [Note(1,1,C+12,.5)+Note(1,1,E+12,.5)+Note(1,1,A+24,.5) Note(1,1,C+12,1)+Note(1,1,E+12,1)+Note(1,1,G+12,1) Note(1,3,A,1.5)];
bm2 = [Note(2,2,C-12,1)+Note(2,2,C-24,1) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,.5)+Note(2,2,C-24,.5) Note(2,2,C-12,.5)+Note(2,2,C-24,.5)];
mm2 = [Note(4,1,E+36,.25) Note(4,1,C+36,.25) Note(4,1,G+24,.25) Note(4,1,E+24,.25) Note(4,1,C+24,.25) Note(4,1,G+12,.25) Note(4,1,E+12,.25) Note(4,1,C+12,.25) Note(4,1,G,.25) Note(4,1,C,.25) Note(4,1,G-12,.25) Note(4,1,C-12,.25)];
mM2 = mm2+bm2+tm2;

mL19 = [mM1 mM2];

%% Line 20
tm1 = [Note(1,1,Bb+12,1)+Note(1,1,D+12,1)+Note(1,1,G+12,1) Note(1,3,G+12,2)];
bm1 = [Note(2,2,G-12,1)+Note(2,2,G-24,1) Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)  Note(2,2,G-12,.5)+Note(2,2,G-24,.5) Note(2,2,G-12,.5)+Note(2,2,G-24,.5)];
mm1 = [Note(4,1,G+36,.25) Note(4,1,D+36,.25) Note(4,1,Bb+36,.25) Note(4,1,G+24,.25) Note(4,1,D+24,.25) Note(4,1,Bb+24,.25) Note(4,1,G+12,.25) Note(4,1,D+12,.25) Note(4,1,G,.25) Note(4,1,D,.25) Note(4,1,G-12,.25) Note(4,1,D-12,.25)];
mM1 = bm1+tm1+mm1;
tm2 = [Note(1,1,A+12,1)+Note(1,1,D+12,1)+Note(1,1,F+12,1) Note(1,3,G+12,2)];
bm2 = [Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5)];
mm2 = [Note(4,1,F+36,.25) Note(4,1,D+36,.25) Note(4,1,A+36,.25) Note(4,1,F+24,.25) Note(4,1,D+24,.25) Note(4,1,A+24,.25) Note(4,1,F+12,.25) Note(4,1,D+12,.25) Note(4,1,A+12,.25) Note(4,1,D,.25) Note(4,1,A,.25) Note(4,1,D-12,.25)];
mM2 = bm2+mm2+tm2;

mL20 = [mM1 mM2];

%% Line 21
tm1 = [Note(1,1,A+12,1)+Note(1,1,F+12,1)  Note(1,1,A+12,1)+Note(1,1,G+12,1) Note(1,1,A+12,1)+Note(1,1,E+12,1)];
bm1 = [Note(2,2,A-12,1)+Note(2,2,A-24,1) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5) Note(2,2,A-12,.5)+Note(2,2,A-24,.5)];
mm1 = [Note(4,1,Bb+48,.25) Note(4,1,G+36,.25) Note(4,1,E+36,.25) Note(4,1,C+36,.25) Note(4,1,A+36,.25) Note(4,1,E+24,.25) Note(4,1,C+24,.25) Note(4,1,A+24,.25) Note(1,3,A+12,.25) Note(4,1,E,.25) Note(4,1,A,.25) Note(4,1,E-12,.25)];
mM1 = mm1+bm1+tm1;
tm2 = [Note(1,1,F,1.5)+Note(1,1,A+12,1.5)+Note(1,1,D+12,1.5) Note(1,3,D+12,1.5)];
bm2 = [Note(2,2,D-12,1.5)+Note(2,2,D-24,1.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5) Note(2,2,D-12,.5)+Note(2,2,D-24,.5)];
mm2 = [Note(4,1,F+36,.25) Note(4,1,D+36,.25) Note(4,1,A+36,.25) Note(4,1,F+24,.25) Note(4,1,D+24,.25) Note(4,1,A+24,.25) Note(1,3,A+24,1.5)];
mM2 = mm2+bm2 +tm2;
tm3 = [Note(1,1,D,4)];
bm3 = [Note(2,2,D-24,4)+Note(2,2,D-36,4)];
mM3 = bm3+tm3;

mL21 = [mM1 mM2 mM3];
%% Test environment
test = [Note(1,1,C,1) Note(1,1,A,1) Note(1,1,C,1) Note(1,1,A,1) Note(1,1,C,1)];

%% Plays song
% s1 is the total song. All others are test measures
s1 = [mL1 mL2 mL3 mL4 mL5 mL6 mL7 mL8 mL9 mL10 mL11 mL12 mL13 mL14 mL15 mL16 mL17 mL18 mL19 mL20 mL21];
s2 = [mL17 mL18 mL19 mL20 mL21];
s3 = [mL1 mL2 mL3 mL4 mL5 mL6 mL7 mL8];
s4 = [mL1 mL2];
s5 = [mL8 mL9 mL10];
s1 = s1/max(s1);
soundsc(s1 ,fs);

s1 = s1/max(s1);

filename = 'HesAPirate.wav';
audiowrite(filename,s1,fs);
 


