% A = {["A","D#"],"B";
%     1       ,   2;
%     1       ,   4
%     [1,0]   , [1]}
function parsed = parser(arr,tempo)
    %since starting at C, step = (2^((n+2)/12)), then freq =
    %220*step.*2.^(octave)
    basis = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B", "R"];
    %Part 1: convert A into numbers and "standard units"
    row1 = arr(1,:);
    for ii = 1:length(row1)
        row1{ii} = findr(row1{ii},basis);
    end
    arr(1,:) = row1;
    
    for ii = 1:length(arr(2,:))
        if(length(arr(2,ii)) == 1)
            arr(2,ii) = {arr{2,ii}.*ones(size(arr{1,ii}))};
        end
    end
    
    arr(3,:) = cellfun(@(x)((240/tempo)*(1./x)),arr(3,:),'un',0);
%     for ii = 1:length(arr(3,:))
%         %check tempo calculation
%         arr(3,ii) = {(240/tempo)*(1./arr{3,ii})};
%     end
    
    %based on player, may not be nessary
%     for ii = 1:length(arr(4,:))
%         if(length(arr(4,ii)) == 1)
%             arr{4,ii} = arr{4,ii}(1)*ones(size(arr{1,ii}));
%         end
%         arr{4,ii} = 0.01*arr{4,ii};
%     end
    
    %Part 2: conver to freq, time, and acc
    parsed = cell(3,size(arr,2));
    for col = 1:size(arr,2)
        parsed(1,col) = {zeros(size(arr{1,col}))};
        for ii = 1:length(arr{1,col})
            n = arr{1,col}(ii);
            freq = 0;
            if n ~= -1
                octave = arr{2,col}(ii);
                step = (2^((n+2)/12));
                %this appears to be slightly off; A maps to ~443
                freq = 220*step.*2^(octave);
            end
            parsed{1,col}(ii) = freq;
        end
    end
    parsed(2,:) = arr(3,:);
    parsed(3,:) = arr(4,:);
end

function n = findr(arr,basis)
    n = zeros(size(arr));
    for ii = 1:length(arr)
        n(ii) = find(basis == arr(ii));
        %R terms
        if(n(ii) == length(basis))
            n(ii) = -1;
        end
    end
end