%% Result plot %%
%%%%%%%%%%%%%%%%%%

function plotResult(X, theta)

	hold on; % keep previous plot
	plot(X(:,2), X * theta)
	legend('Training data', 'Linear regression')
	hold off

end
