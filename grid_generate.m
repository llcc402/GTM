%% Input:
%      num      a scalar. The number of nodes in a grid.
%% Output:
%      grid     a matrix of size 2 * num. Columns are corresponding to
%               nodes.
%%
function grid = grid_generate(num)
if rem(sqrt(num), 1) ~= 0
    error('num should be an integer')
end

m = sqrt(num);
grid = zeros(2, num);
grid(1,:) = repmat(0.1:0.1:0.1*m, 1, m);
for i = 1:m
    grid(2, (1:m) + (i-1) * m) = ones(1,m) * i / 10;
end

end