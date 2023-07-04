%a)
% load ELE532_Lab1_Data.mat
% numRows = size(B, 1);
% numCols = size(B, 2);
% 
% for i = 1:1:numRows
%     for j = 1:1:numCols
%         if (abs(B(i,j)) < 0.01)
%             B(i,j) = 0;
%         end
%     end
% end

load ELE532_Lab1_Data.mat
B([abs(B)>=0.01])=0