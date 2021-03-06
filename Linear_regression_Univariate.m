%% Linear Regression with univariate data, without regularization.
    % The nature of data also plays a role in fitting, try different values
    % of the learning rate parameter coupled with the number of iterations.
clc; clear; close all;

%% Initializations
data = load('ex1data1.txt');    % The data set
X = data(:,1);      % The input vector storing dependent variable
y = data(:,2);      % The Target vector with dependent variabe
m = length(X);      % Number of total examples in the training set
n = 1;      % Number of Features(/attributes)
J_hist=[];  % Stores the Updated costs by SGD

%% Make Some plots
% Plot dependent variable vs. independent variable
%  hold on;
%  plot(X,y, ':xg', 'MarkerSize', 10)% 'MarkerColor', 0);
%  ylabel(' POP ');
%  xlabel(' Profit');
%  title(' POP vs Profit for a restraunt chain');
 %% SGD for Linear Regression
 
        theta = rand(2,1);
        X = horzcat( ones(m,1), X);
        temp = X*theta;
        temp2 = 1/(2*m);

        J = temp2*(temp - y)'*(temp - y) ;%<------------ Cost
        fprintf('The cost of these computations before SGD is : %f\n', J);
 
 % Important declarations
        num_iters = 100000;%<----------- Number of iterations
        alpha = 1e-3;      %<----------- learning_rate
%% Learning rate is such a parameter that is will hold convergence 
              %if insufficient number of iterations are provided for a considerably small learning rate.
%%
        
 for i = 1:num_iters 
     theta  = theta - (alpha/m).*X'*(X*theta-y); 
     
            temp = X*theta;
            temp2 = 1/(2*m);
            J_hist = temp2*(temp - y)'*(temp - y) ;

     %Show cost at every iteration
     %fprintf('The cost of these computations is : %f\n', J);
 end

 
 %% predict 
 
 for j = 1:m
     test = X(j,:); test_result = test*theta;
    fprintf(' \nThe predicted value of Profit in  %f POP is %f while ORG =%f\n', (X(j,2)*10000),  (test_result*1000), (10000*y(j)));
 end

 fprintf('\n\t\tThetas found by gradient descnet are : %f and %f', theta(1), theta(2));

%% ==========================NOT MY WORK===================================
%% =============  Visualizing J(theta_0, theta_1) =============
% fprintf('Visualizing J(theta_0, theta_1) ...\n')

% Grid over which we will calculate J
theta0_vals = linspace(-10, 10, 100);
theta1_vals = linspace(-1, 4, 100);

% initialize J_vals to a matrix of 0's
J_vals = zeros(length(theta0_vals), length(theta1_vals));

% Fill out J_vals
for i = 1:length(theta0_vals)
    for j = 1:length(theta1_vals)
	  t = [theta0_vals(i); theta1_vals(j)];    
	  J_vals(i,j) = computeCost(X, y, t);
    end
end


% Because of the way meshgrids work in the surf command, we need to 
% transpose J_vals before calling surf, or else the axes will be flipped
J_vals = J_vals';
% Surface plot
figure;
surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0'); ylabel('\theta_1');

% Contour plot
figure;
% Plot J_vals as 15 contours spaced logarithmically between 0.01 and 100
contour(theta0_vals, theta1_vals, J_vals, logspace(-2, 3, 20))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
plot(theta(1), theta(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);
line(theta(1), theta(2));
hold off
figure;
hold on;
plot(X,y,':r', 'MarkerSize',10);
plot(X*theta,y);
