clc;
close all;
clear all;
[y,fs,N]=wavread('D:\arijit\seeyoulater.wav');
% y1=length(y)/44100;
% y1_seg=y(25*44100:27*44100);
% y2=length(y1_seg)/44100;
 bpre = [ 1 -0.95 ];
 apre = [ 1 ];
% fvtool(bpre,apre);
ypre = filter(bpre,apre,y);
 %soundsc(y1_seg,fs)
 %soundsc(ypre,fs)
 subplot(2,1,1);
 plot(y);
  subplot(2,1,2);
 plot(ypre);
 frame(y,fs,N);