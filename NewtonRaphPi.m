% Using root finding method to estimate pi.

% Initial guess close to pi
x0 = linspace(1.99,4.29,4);           % Initial guess
tol = 1e-10;       % Tolerance for stopping criteria
max_iter = 1000;  % Maximum number of iterations

figure

% Newton's Method implementation
for i = 1:length(x0)
    [Estimates, Iterations] = NewtRaphPiFuncA(x0(i),tol,max_iter);
    plot(Iterations,Estimates,'Linewidth',1.5)
    hold on
end
    

Estimate = Estimates(end);
iter = Iterations(end);
% fprintf('Estimated value of Pi: %.15f\n',Estimate);
% fprintf('Number of iterations: %d\n', iter);

hold on
plot([0 iter],[pi pi],'black','LineWidth',0.5)
xlabel('Iterations')
ylabel('Estimated Value of \pi')
legend('x0 = 1.990','x0 = 2.76','x0 = 3.5','x0 = 4.29','\pi')
title('Estimated Values of \pi against iterations for different initial guesses')
