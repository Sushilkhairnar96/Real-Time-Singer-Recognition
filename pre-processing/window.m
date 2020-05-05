function f1=window(y,fs,N)
n=1:1:N
s(n)=signal(1.250*44100:1.500*44100);
w(n)=0.54-0.46*cos((2*pi*n)/(N-1));
y(n)=s(n)*w(n);
plot(y(n));