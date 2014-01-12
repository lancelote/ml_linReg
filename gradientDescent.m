%% Graident descent %%
%%%%%%%%%%%%%%%%%%%%%%

function [theta, J_temp] = gradientDescent(X, Y, theta, m, alpha, num_iters)

	for iter = 1:num_iters

		theta = theta - (alpha * 1/m * (X * theta - Y)' * X)';
		J_temp(iter) = computeCost(X, Y, theta, m); % save history for debug

	end

end
