function [PiEstimates,Iterations] = NewtRaphPiFuncA(x0,tolerance,maxiter)
% Takes in initial estimate, number iterations and tolerance. 

% f(x) and f'(x)
f = @(x) sin(x);
df = @(x) cos(x);

Iterations = [0];
PiEstimates = [x0];

% Newton's Method implementation
for iter = 1:maxiter
    % Calculate the function and its derivative at x0
    fx = f(x0);
    dfx = df(x0);
    
    % Update x0 using Newton's formula
    x1 = x0 - fx ./ dfx;
    Iterations = [Iterations iter];
    PiEstimates = [PiEstimates x1];

    % Check for convergence
    if abs(x1 - x0) < tolerance
        break;
    end
    % Update x0 for the next iteration
    x0 = x1;
end
end