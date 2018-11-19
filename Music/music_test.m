%% Chromatic Scale
%sound(genfreq(440*(2^(2/12)),2))
% notes = ["A", "A#", "B", "C" , "C#" ,"D", "D#", "E" ,"F","F#" "G" ,"G#", "R"];
% for note = notes
%     for octave = 0:2
%         playnote(note,0.1,octave)
%     end
% end
%playnote("D#",2,2);
%% Double Notes
% k = 0.5
% n = 10
% s = genfreq(440,k,@square);
% for ii = 1:n
%     sound(s,8200);
%     pause(k);
% end
% k = 0.25;
% s1 = genfreq(440,k,0.01,@square);
% s2 = genfreq(440,k/2,0.01,@square);
% for ii = 1:n
%     sound(s1,8200);
%     pause(k);
%     sound(s2,8200);
%     pause(k/2);
% end
%% Play Test
pizza1 = {
    "A","G#","A","E","D#","E","F","G","F","E","D","C","B","A#","B","E","D","C#","B","C#","D","C#","B","C#"
     -1,  -1, -1, -1,  -1, -1, -1, -1, -1, -1, -1, -1, -2,  -2, -2, -1, -1,  -1, -2,  -1, -1,  -1, -2,  -1
     8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
     };
 playparsed(parser(pizza1,224));