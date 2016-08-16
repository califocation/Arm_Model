function [a1,a2,a3]=feed_forward(X,Theta1, Theta2,K)
%% Feed Forward Propagation

    % Input Layer 
        z1 = X;
        a1 = z1;
        a1 = horzcat( ones(size(X,1),1), a1);
    % Hidden layer computation
        z2 = a1*Theta1;
        a2 = g(z2);
        a2 = horzcat( ones(m,1), a2);
    % Output layer computations
        z3 = a2*Theta2;
        a3 = g(z3);
       
end  