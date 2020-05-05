function f=frame(signal,fs,N)
%Shift percentage is 40%to cancel the background effect
%and Convert the signal to row vector 
s=signal(.4*length(signal):end)'; 
Number_of_frames=240; %Number of frames
window_length=round(fs/Number_of_frames);%size of the frame
Frame_No=zeros(Number_of_frames);%The frame number
Frame_No(1)=1;
for i=1:Number_of_frames-1
    Frame_No(i+1)=Frame_No(i)+window_length;%Construct an array for the start number of each frame
end
j=input('Enter the frame number: ');
plot((N:N+window_length-1),s(N:N+window_length-1));%plot the frame
title(['Frame Number ',num2str(j)]);xlabel('Time');ylabel('Amplitude');

%c=s(N:N+gnalwindow_length-1)
