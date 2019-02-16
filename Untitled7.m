
function J = Untitled7(x,y,theta)

m = length(y);
h = x * theta;

J = 1/(2*m) * sum((h-y).^2)
end