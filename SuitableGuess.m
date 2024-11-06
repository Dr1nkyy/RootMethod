% Finding domain of suitable guesses for Newton Raphson.
tolerance = 10-6;
maxiter = 100;
guesses = linspace(1.99,4.29,1000);

[PiValues,Iterations] = NewtRaphPiFuncB(guesses,tolerance,maxiter);

figure
plot(guesses,Iterations,'black','LineWidth',1)
title('Determining appropriate inital guesses for Newton Raphson')
xlabel('Inital Guess \pi')
ylabel('Estimated \pi')
