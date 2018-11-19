function [] = playparsed(p)
fs = 8200;
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
    sound(s,fs);
    pause(time);
end
end

