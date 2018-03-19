function [P,max,min,N] = ImageToArray(I)

% constent
row = 1;
col = 2;
dim = size(I);
% store all pixel to a position array
N = 1;
rowMax = 0;
rowMin = Inf;
colMax = 0;
colMin = Inf;
P = zeros(100000,2);
for i = 1:dim(row)
   for j = 1 : dim(col)
       if (I(i,j)==1)
          % store each point in a array
          P(N,:) = [i,j];
          N = N + 1;
          
          if (i > rowMax)
              rowMax = i;
          end
          
          if (i < rowMin)
              rowMin = i;
          end
          
          if (j > colMax)
              colMax = j;
          end
          
          if (j < colMin)
              colMin = j;
          end
       end
   end
end

% store max and min to arrays
max = [rowMax colMax];
min = [rowMin colMin];
N = N - 1;
end
