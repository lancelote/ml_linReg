%% =============== Data generation for linear regression testing ===============

function genData(m)

	%% Data generation

	% Random X (m - # of training examples)
	X = rand(m, 1);

	% Y calculation
	Y = f(X);

	%% Formate and save data 

	% Output matrix formation
	data = cat(2, X, Y);

	% Data Output
	save data.mat data

end