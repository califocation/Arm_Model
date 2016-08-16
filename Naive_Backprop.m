% A simple backporpogation Naural Net to print the next binary number
%% Network description
    % Size of input layer           : 2
    % Number of Hidden layers, size : 1, variable(5,10,20,40,100) 
    % Size of output layer          : 8 ( Number of labels to classify is
    % 8)
    % Number of training examples (m) : Variable(initially 8)
    % Number of features (n)          : 3 (#digits in binary representation)
    
%% Specification of input(-able) variables.
clc;clear; close all;
    X = [0 0 0; 0 0 1; 0 1 0; 0 1 1; 1 0 0; 1 0 1; 1 1 0; 1 1 1]; % Size(X) = 8x3
    X = repmat(X,100,1);
    % X is the training set so, do try the following things, let X be a
    % replica for y; replicate the sequential pattern of X for a large
    % number of values and then train; Break the sequence and compare the
    % three results.
           
    y = [0;1;2;3;4;5;6;7]; % Size(y) = 8;
    y_test = eye(8)*

    m = size(X,1);
    n = size(X,2);
    K = 8; % Number of classes/ size of output layer
    
    hidden_layer_size = 5;% Variable
    input_layer_size  = n;
    output_layer_size = K;
    
% theta1 = []; % Size = (n+1)x(hidden_layer_size) = 4x5
% theta2 = []; % Sizw = (hidden_layer_size+1)x(output_layer_size) = 6x8 

% Unrolled Thetas
initial_theta1_vec = rand( (input_layer_size+1)*hidden_layer_size ,1);
initial_theta2_vec = rand( (hidden_layer_size+1)*output_layer_size ,1);

% structuring Thetas
Indexing1_from = 1;
Indexing1_upto = (input_layer_size+1)*hidden_layer_size ;

Indexing2_from = 1;
Indexing2_upto = (hidden_layer_size+1)*output_layer_size;

Theta1 = reshape(initial_theta1_vec(Indexing1_from : Indexing1_upto), input_layer_size +1, hidden_layer_size);
Theta2 = reshape(initial_theta2_vec(Indexing2_from : Indexing2_upto), hidden_layer_size +1, output_layer_size);

clear Indexing1_from Indexing1_upto Indexing2_from Indexing2_upto; % Free excess memory
%% Feedforwarding
    [a1,a2,a3]=feed_forward(X,Theta1,Theta2,K);
     out = a3;
%% Show your prediction
    [ploc, pval]= max(out,[],2);
    %y_rep = repmat(y,100,1);
    for i = 1:m+1
        j = mod(i,8);
        fprintf('\n The predicted value without training for %d is : %d \n', y(j+1),pval(i) );
        if(y(i)==pval(i))
            fprintf('\tCorrect Prediction');
        else
            fprintf('\tWrong Prediction')
        end
    end
%% Visualize Thetas
    hold on;
    plot(Theta1,'--k'); plot(Theta2, ':r');
    hold off;
%% Implement Backprop
%     numi_ters = 5000;
% 
%     % 1. Feedforward Propagation
%         feed_forward(X,Theta1, Theta2, K);
%     for i=1:num_iters
%         % 2. Calculate dels
%             del1 = [];
%             del2 = [];
%         % 3. Calculate deltas
%             delta1 = [];
%             delta2 = [];
%         % 4. Calculate the Gradients
%             grad1 = [];
%             grad2 = [];
%         % 5. Minimize gradient using optimization
%             % 5.1 Unroll Thetas to feed into optimizer fminunc/fmincon
%                 Unrolled_Theta = [Theta1(:) Theta2(:)];
%             % 5.2 Call optimizer
% 
%         % 5.3
        
        
