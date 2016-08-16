function cost = J(X,y,Theta1, Theta2, a2,lambda,m)
% THIS IS THE COST FUNCTION
    % The cost function is set for SIGMOIDAL
    h_theta1 = g(X*Theta1);
    h_theta2 = g(a2*Theta2);
    
        cost1 = (1/m)*( y'*log(h_theta1) + (1-y)'*log(1-h_theta1) ) + lambda/(2*m)*(Theta1.*Theta1);% Regularized version
        cost2 = (1/m)*( y'*log(h_theta2) + (1-y)'*log(1-h_theta2) ) + lambda/(2*m)*(Theta2.*Theta2);% Regularized version
    
        cost = cost1+cost2;
        
        fprintf('\n Cummulative_cost = %f ; Cost1 = %f, Cost2 = %f\n',cost, cost1, cost2);
end
        