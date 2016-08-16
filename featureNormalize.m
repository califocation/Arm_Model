function [X_norm,y_norm, mu, sigma, mu_y, sigma_y] = featureNormalize(X,y)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
y_norm = y;
mu = ones(1, size(X, 2));
sigma = ones(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
%  Mean and SD
mu = mean(X); sigma = std(X);
mu_y  =mean(y);  sigma_y = std(y);
for i = 1:47
    X_norm(i,2) = (X(i,2) - mu(2))/ sigma(2);
    X_norm(i,3) = (X(i,3) - mu(3))/ sigma(3);
    y_norm(i,1) = (y(i,1) - mu_y(1))/ sigma_y(1);
end

fprintf('Sigma is %f\n ',sigma);
fprintf('Mu is %f\n', mu);


% ============================================================

end
