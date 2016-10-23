d = load('3Class.mat');
data = d.DataTrn;
l = d.DataTrnLbls;
data = data';

grid = grid_generate(400);
phi = manifold_generate(grid, 0.2, 40);
[W, beta] = gtm(data, phi, grid, 500);

prediction = gtm_predict(W, phi, beta, grid, data);

figure(2)
plot(prediction(1,l(:,1) == 1), prediction(2, l(:,1) == 1), 'o')
hold on
plot(prediction(1,l(:,2) == 1), prediction(2, l(:,2) == 1), '+')
plot(prediction(1,l(:,3) == 1), prediction(2, l(:,3) == 1), 'x')