R = [1e4, 1e4, 1e4,]; C = [1e-6, 1e-6];
% Find Characteristic Equation Coefficients:
A1 = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];

%Find characteristic roots:
lambda = roots(A1);

% Takes matrix of the roots and returns the original polynomial eq.
disp(poly(lambda));