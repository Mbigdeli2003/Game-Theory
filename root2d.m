%% nonlinear equation solving for noncoperative nash equlibruim
function F=root2d(x)

F(1)=96 - 8*x(2) - x(1)*(2*x(1) - 4) - x(1)^2 - 12*x(1);
F(2)=80 - 12*x(2) - x(2)*(2*x(2) - 4) - x(2)^2 - 8*x(1);
