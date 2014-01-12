%% Cost value computing %%
%%%%%%%%%%%%%%%%%%%%%%%%%%

% for linear regression with one variable
function J = computeCost(X, Y, theta, m)

	J = 0;
	J = sum(1 / (2 * m) * (X * theta - Y) .^ 2);

end
