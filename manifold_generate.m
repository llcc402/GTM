%% Input:
%      grid      should be generated from grid_generate.
%      sigma     the width of the Gaussian kernel.
%      n         the dimension of phi
%% Output:
%      phi       the manifold projected grid. Each column is corresponding 
%                to a of the node in the lattice.
%
%%
function [phi, cdist] = manifold_generate(grid, sigma, n)

% the centoids of the kernels
[~,C] = kmeans(grid', n);

% construct phi
phi = pdist2(C, grid');
phi = exp(-phi.^2 / sigma^2);

cdist = pdist2(C, C);
end