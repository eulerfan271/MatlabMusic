%sound(genfreq(440*(2^(2/12)),2))
notes = ["A", "A#", "B", "C" , "C#" ,"D", "D#", "E" ,"F","F#" "G" ,"G#", "R"];
for octave = -3:2
    for note = notes
        playnote(note,0.1,octave)
    end
end
%playnote("D#",2,2);