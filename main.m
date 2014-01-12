%% Linear regression for one variable %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% data loading %%
%%%%%%%%%%%%%%%%%%

fprintf('Loading data...');

% load data.mat;
% X = data(:,1);
% Y = data(:,2);

load data.mat;
X = data(:,1);
Y = data(:,2);
m = length(Y); % number of training examples

fprintf(' done.\n');
fprintf('Press Enter to continue...\n');
pause;

%% gradient descent %%
%%%%%%%%%%%%%%%%%%%%%%

X = [ones(m, 1), X, X .^ 2]; % create proper X vector
theta = zeros(3, 1); % initialize theta values

% gradient descent settings
iterations = 1000;
alpha = 1;

% compute initial cost
J = computeCost(X, Y, theta, m);

fprintf('Initial cost is %f\n', J);
fprintf('Press Enter to continue...\n');
pause;

% gradien descent running
fprintf('Perfoming gradient descent...')

[theta, J_temp] = gradientDescent(X, Y, theta, m, alpha, iterations);

fprintf(' done.\n');
fprintf('Result cost is %f\n', J_temp(iterations));
fprintf('Theta found by gradient descent: ');
fprintf('%f %f %f \n', theta(1), theta(2), theta(3));
fprintf('Press Enter to continue...\n');
pause;

%% Cost function visualizing %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
