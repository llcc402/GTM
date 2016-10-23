%% Output:
%    prediction      a matrix of size m * 2. 
function prediction = gtm_predict(W, phi, beta, grid, data)

% the number of the observations
m = size(data, 2);

% the number of the nodes
k = size(phi ,2);

prob = pdist2((W * phi)', data');

prob = exp(-prob.^2 * beta / 2);
prob = prob ./ repmat(sum(prob), k, 1);

prediction = grid * prob;