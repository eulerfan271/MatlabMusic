function [s,fs] = genfreq(freq,time,acc,wave,fs)
    if nargin < 5
        fs = 8200; 
    end
    N = time*fs; 
    k = 0:(N-1); 
    s = zeros(size(k));
    
    for f = freq
        s = s+wave(2*pi*f*k/fs);
    end
    
    %accent the first accth seconds, quiet the rest
    r = round(min(acc,time)*fs);
    s(1:r) = 4*s(1:r);
    s(r+1:end) = (1/4)*s(r+1:end);
end