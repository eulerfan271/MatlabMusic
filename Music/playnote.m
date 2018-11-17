function [] = playnote(note,len,octave)
    notes = ["A", "A#", "B", "C" , "C#" ,"D", "D#", "E" ,"F","F#" "G" ,"G#", "R"];
    n = find(notes == note);
%     %doesn't work; change
%     if n==0
%         error("Not a valid note");
%     end
    if note ~= "R"
       step = 2^((n-1)/12);
       oct = 2^(octave);
       sound(genfreq(oct*440*step,len));
    end
    pause(len)
end