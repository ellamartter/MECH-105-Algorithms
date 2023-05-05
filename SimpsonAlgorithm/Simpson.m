function I = Simpson(x,y)
% Check that the inputs are the same length
if length(x) ~= length(y)
    error('The input vectors must be the same length')
end

% Check that x is equally spaced
dx = diff(x);
if ~all(abs(dx - dx(1)) < 1e-8)
    error('The input x vector must be equally spaced')
end

% Warn the user if the trapezoidal rule has to be used on the last interval
if mod(length(x), 2) == 0
    warning('Trapezoidal rule has to be used on the last interval')
end

% Compute the integral using Simpson's 1/3 rule and the trapezoidal rule
h = dx(1);
n = length(x) - 1;
I = y(1) + y(end) + 4*sum(y(2:2:end-1)) + 2*sum(y(3:2:end-2));
if mod(length(x), 2) == 0
    I = I + (y(end-1) + y(end))*h/2;
end
I = I*h/3;
end