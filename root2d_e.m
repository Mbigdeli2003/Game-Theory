%% nonlinear equation solving for efficient points
function F_e=root2d_e(x_e)

F_e(1)=4*x_e(1) + 8*x_e(2) + x_e(1)*(2*x_e(1) - 4) + x_e(1)^2 - 96;
F_e(2)=8*x_e(1) + 4*x_e(2) + x_e(2)*(2*x_e(2) - 4) + x_e(2)^2 - 80;