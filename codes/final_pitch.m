function pitch_freq = final_pitch(p)

[ip,fs] = audioread(p);
max_expected_period = round(1/50*fs);
min_expected_period = round(1/200*fs);

frame_len = 2*max_expected_period;
    
for k = 1 : length(ip)/frame_len -1
    range = (k-1)*frame_len + 1:k*frame_len;
    frame = ip(range);
    %show the input in blue and the selected frame in red
     
     
    %use xcorr to determine the local period of the frame
    [rxx,lag] = xcorr(frame, frame);
%     subplot(3,1,3)
%     plot(lag, rxx,'r')
    rxx(find(rxx < 0)) = 0; %set any negative correlation values to zero
    center_peak_width = find(rxx(frame_len:end) == 0 ,1); %find first zero after center
    %center of rxx is located at length(frame)+1
    rxx(frame_len-center_peak_width : frame_len+center_peak_width  ) = min(rxx);
    [max_val,loc] = max(rxx);
    period = abs(loc - length(frame)+1); 
    % disp(period);
    pitch_freq(k)=fs/period;
end
    disp(pitch_freq);
