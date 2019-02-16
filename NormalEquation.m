function [theta] = NormalEquation(X, Y)
theta = (inv(X'*X))*X'*Y;
end
