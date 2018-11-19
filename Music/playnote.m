function [] = playnote(note,len,octave)
    basis = ["A", "A#", "B", "C" , "C#" ,"D", "D#", "E" ,"F", "F#", "G" ,"G#", "R"];
%     %doesn't work; change
%     if n==0
%         error("Not a valid note");
%     end
    if note ~= "R"
          n = find(basis == note);
          step = 2^((n-1)/12);
          oct = 2^(octave);
          sound(genfreq(oct*440*step,len,@square));
    end
%     n = notes;
%     step = 2.^((n-1)/12);
%     oct = 2.^(octave);
%     sound(genfreq(440*oct.*step,len,@square))
    pause(len)
end