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
% pizza1 = {
%     "A","G#","A","E","D#","E","F","G","F","E","D","C","B","A#","B","E","D","C#","B","C#","D","C#","B","C#"
%      -1,  -1, -1, -1,  -1, -1, -1, -1, -1, -1, -1, -1, -2,  -2, -2, -1, -1,  -1, -2,  -1, -1,  -1, -2,  -1
%      8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
%      1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
%      };
%  playparsed(parser(pizza1,224));
 %% More of Song, First Loop
 % 220 bpm

% measures 1-4
pizza1 = {
    "A","G#","A","E","D#","E","F","G","F","E","D","C","B","A#","B","E","D","C#","B","C#","D","C#","B","C#"
     -1,  -1, -1, -1,  -1, -1, -1, -1, -1, -1, -1, -1, -2,  -2, -2, -1, -1,  -1, -2,  -1, -1,  -1, -2,  -1
     8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
};

 % measures 5-8
pizza2 = {
  "A","A","E","E","A","A","E","E","A","A","E","E","A","A","E",["E","E"]
   -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, [-2,1]
    4,  8,  4,  8,  4,  8,  4,  8,  4,  8,  4,  8,  4,  8,  4,  8
    1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1
};

% measures 9-17
pizza3 = {
%           9                                      10                                        11
    ["A","A"],["A","A"],["E","A"],["E","A"],["A","A"],["A","A"],["E","G#"],["E","G#"],["A","E"],["A","E"],["E","F#"],["E","F#"],["A","C#"],["A","C#"],["E","C#"],["E","C#"],["A","C#"],["A","C#"],["E","B"],["E","A"],["A","A"],["A","A"],["E","A"],["E","A"],["A","A"],["A","C#"],["E","B"],["E","A"],["A","A"],["A","A"],["E","A"],["E","A"],["A","A"],["A","A"],"E","F#",["G#","E"]
       [-2,1],   [-2,1],   [-2,1],   [-2,1],   [-2,1],   [-2,1],    [-2,1],    [-2,1],   [-2,1],   [-2,1],    [-2,1],    [-2,1],    [-2,1],    [-2,1],    [-2,1],    [-2,1],    [-2,1],    [-2,1],   [-2,0],   [-2,0],   [-2,0],   [-2,0],   [-2,0],   [-2,0],   [-2,0],    [-2,1],   [-2,0],   [-2,0],   [-2,0],   [-2,0],   [-2,0],   [-2,0],   [-2,0],   [-2,0], -2,  -2,    [-2,1]
            4,        8,        4,        8,        4,        8,         4,         8,        4,        8,         4,         8,         4,         8,         4,         8,         4,         8,        4,        8,        4,        8,        4,        8,        4,         8,        4,        8,        4,        8,        4,        8,        4,        8,  8,   8,         8
        [1,1],    [1,0],    [1,0],    [1,0],    [1,0],    [1,1],     [1,1],     [1,1],    [1,1],    [1,1],     [1,1],     [1,1],     [1,1],     [1,0],     [1,1],     [1,0],     [1,0],     [1,1],    [1,1],    [1,1],    [1,1],    [1,0],    [1,0],    [1,0],    [1,0],     [1,1],    [1,1],    [1,1],    [1,1],    [1,0],    [1,0],    [1,0],    [1,0],    [1,0],  1,   1,         1
};
tempo = 220;
pizza = [pizza1 pizza2 pizza3];
pars1 = parser([pizza1 pizza2],220);
pars3 = parser(pizza3,220);
pars = [pars1 pars3];
count = 0;
pitch = pi/3;
speed = 0.95;

playparsed(pars);
while 1
    pars3(1,:) = cellfun(@(x)pitch*x,pars3(1,:),'un',0);
    pars3(2,:) = cellfun(@(x)speed*x,pars3(2,:),'un',0);
    playparsed(pars3);
end