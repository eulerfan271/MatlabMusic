function [] = playparsed(p)
fs = 8192;
wave = @square;
for col = 1:size(p,2)
    s = 0;
    time = p{2,col};
    if length(p{3,col}) == 1
        s = genfreq(p{1,col},time,p{3,col},wave,fs);
    else
        for el = length(p{1,col})
            s = s + genfreq(p{1,col}(el),time,p{3,col}(el),wave,fs);
        end
    end
    %add random vector of fn frequiences at r of amplitude
%     fn = 3;
%     r = 1;
%     s = s + r*genfreq(440*(2*rand(1,fn)),time,0,wave,fs);
    
    sound(s,fs);
    pause(time);
end
%plot(s);
end

