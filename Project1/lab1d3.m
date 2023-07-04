load ELE532_Lab1_Data.mat

audioFile= x_audio;
soundY = 8000;
audioFile([abs(audioFile)<0.01]) =0;
sound(audioFile, soundY);

numRows = size(audioFile, 1);
numCols = size(audioFile, 2);
count = 0;

for i = 1:1:numRows
    for j = 1:1:numCols
        if (abs(audioFile(i,j)) ==0)
            count = count + 1;
        end
    end
end
count;