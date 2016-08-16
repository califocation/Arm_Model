function [g_z] = g(z)
%==========ACTIVATION FUNCTION===============
% Activation Function is set to SIGMOIDAL
    g_z = 1./(1+ exp(-z));
end