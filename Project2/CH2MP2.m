function[lambda] = CH2MP2(R,C)

A1 = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];

%Find characteristic roots:
lambda = roots(A1);