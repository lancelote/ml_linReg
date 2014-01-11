%% ================================= Plot data =================================

function plotData(X, Y)

	% new figure
	figure;

	% plot data
	plot(X, Y, 'rx', 'MarkerSize', 10);

	% lables naming
	ylabel('Y');
	xlabel('X');

end