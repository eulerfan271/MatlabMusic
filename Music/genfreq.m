function [s,fs] = genfreq(freq,time)
fs = 8200; 
N = time*fs; 
k = 0:(N-1); 
s = zeros(size(k));
for f = freq
    s = s+cos(2*pi*f*k/fs);
end
end