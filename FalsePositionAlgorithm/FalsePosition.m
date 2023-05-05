function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
% Check the number of input arguments
if nargin < 3
    error('At least 3 input arguments are required!');
end

if nargin < 4 
    es = 0.0001;
end

if nargin < 5 
    maxit = 200;
end

% Check the sign of the function at the two points
if func(xl) * func(xu) > 0
    error('The sign of the function at the two points must be opposite!');
end

% variables
ea = 100;
iter = 0;

% Loop until the desired accuracy or the maximum number of iterations is reached
while abs(ea) > es && iter < maxit
    % Calculate the estimated root location
    root = xu - ((func(xu) * (xl - xu)) / (func(xl) - func(xu)));
    
    % Calculate the approximate relative error
    if iter > 0
        ea = (root - root_old) / root * 100;
    end
    
    % Check the sign of the function at the new root location
    if func(root) * func(xl) > 0
        xl = root;
    elseif func(root) * func(xu) > 0
        xu = root;
    else
        ea = 0;
    end
    
    % Save the old root value
    root_old = root;
    
    % Increment the iteration counter
    iter = iter + 1;
end

% Calculate the function value at the estimated root location
fx = func(root);
end
