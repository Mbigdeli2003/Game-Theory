function [c, ceq] = nonlinear_constraints(x)

    % Define the constraints

   c=[-(- x(1)*(8*x(1) + 8*x(2) - 160) - x(1)*(x(1)^2 - 4*x(1) + 64) - 134),...
       -(- x(2)*(8*x(1) + 8*x(2) - 160) - x(2)*(x(2)^2 - 4*x(2) + 80) - 62) ];

    ceq = []; % No equality constraints

%% problem assumptions