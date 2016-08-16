% Multivariate Linear Regression
clc; clear; close all;
%% Initializations

data_source = load('ex1data2.txt'); % Data source
X =  horzcat( ones(size(data_source,1),1), data_source(:,1:2)); % Training set/ dependent variable prepended with ones
y = data_source(:,3); % Independent variable
m = size(X,1); % Number of examples
n = size(X,2); % Number of features
theta = ones(3,1);
%% Feature Normalization
 [X,y, mu, sigma, mu_y, sigma_y] = featureNormalize(X,y);

%% Linear Regression
    h_theta = X*theta;
    
    %Cost Funtion
    J = (1/2*m) .* (( h_theta-y)'*(h_theta-y));
    fprintf('The cost before SGD is %f\n',J);
    
 %% ===================== Applying SGD =====================================
    num_iters = 100500; alpha = 1e-4;%<--------- Learning Rate Paramter
    % for ex1data2.txt optimal num_iters = 100500, alpha = 1e-4
    
    J_hist = zeros(num_iters,1) ;  
    for i = 1:num_iters
        h_theta = X*theta;
        theta = theta - (alpha/m)*(  X'*(h_theta-y));
        
        J_hist(i) =  (1/2*m) .* (( h_theta-y)'*(h_theta-y));
        fprintf(' The cost while iterating SGD in step %d is %f\n', i, J_hist(i) );
    end
    
        % Plotting the convergence graph
            figure;
            plot(1:numel(J_hist), J_hist, '-b', 'LineWidth', 1);
            xlabel('Number of iterations');
            ylabel('Cost J');
            title('Convergence graph for Cost ( Cost v/s. Num-Iters)');
 %% ============================= Predict ====================================
    h_theta = X*theta;

    for j = 1:m
       t1 =  X(j,2);
       t2 = (h_theta(j));
      fprintf('\n');
    fprintf('The predicted value for %f is %f ; ORG is %f\n',t1, t2,y(j) );
    end

        fprintf(' \n\tThetas predicted are %f, %f, and %f', theta(1), theta(2), theta(3));
        
%% ==========================VISUALIZATION===================================

figure;
hold on;
plot(X,y,':r', 'MarkerSize',10);
plot(X*theta,y);
xlabel( 'Predicted value');
ylabel('Original value');
title(' Prediction v/s. Original');
