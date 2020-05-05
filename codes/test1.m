function [mfcc2] = test1(p,n)

f_low = 300;
f_high = 8000;
filt_num = n;
fft_size =512;

[s,fs]=wavread(p);

s_fft = fft(s);                 
s_fft_abs = (abs(s_fft));
for i = 1 : fft_size
    s_fft_abs(i) = (s_fft_abs(i)*s_fft_abs(i))/fft_size;
end

s_fft_abs = log10(s_fft_abs);


%%
mel_low = 1125*log(1+(f_low/700));  %mel_low = 174
mel_high = 1125*log(1+(f_high/700));%mel_high = 1231

% creating the mel-scaled vector
Mel = linspace(mel_low,mel_high,filt_num);

% computing frequencies of the Mel vector
Freq = 700*((exp(Mel/1125))-1);

% convert frequencies to nearest bins
s_freq_hz = zeros(1,filt_num);
for i=1:filt_num
    s_freq_hz(i) = floor((fft_size+1)*Freq(i)/fs);
end

mel_filter_bank = zeros(fft_size,filt_num);
sum_energy = zeros(1,filt_num);
    for m =2:length(Mel)-1
        for k=1:fft_size
            if (k<(s_freq_hz(m-1)))
                mel_filter_bank(k,m)=0;

            elseif (s_freq_hz(m-1)<=k && k<=(s_freq_hz(m)))
                mel_filter_bank(k,m)=((k-s_freq_hz(m-1))/(s_freq_hz(m)-s_freq_hz(m-1)));

            elseif (s_freq_hz(m)<=k && k<=s_freq_hz(m+1))
                mel_filter_bank(k,m)=((s_freq_hz(m+1)-k)/(s_freq_hz(m+1)-s_freq_hz(m)));

            elseif k>s_freq_hz(m+1)
                mel_filter_bank(k,m)=0;
            end
            mel_filter_bank = floor(mel_filter_bank);
            sum_energy(m) = sum_energy(m) + mel_filter_bank(k,m)*s_fft_abs(k);
        end
    end
%    figure;
    
   plot(Freq,mel_filter_bank);
%%    



mfcc=dct(sum_energy);  %find ifft of integrated output. This is the cepstral domain
mfcc2=abs(mfcc);

% figure;
% stem(mfcc2);  %plot first 14 MFCC coefficients by cepstral truncation
% title('plot of MFCC for voiced speech');
% xlabel('frequency in mel scale');
% ylabel('amplitude in dB');
%disp(mfcc2);
        