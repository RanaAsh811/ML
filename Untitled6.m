
file = 'house_prices_data_training_data.csv';
data=xlsread(file);

x = data(:, 4:18); %feature matrix
x2 = data(:, 4:10);
x3 = data(:, 4:8);
x4 = x.^2


y = data(:,3); 
n = length(y);
theta = zeros(15,1);
theta2 = zeros(7,1);
theta3 = zeros(5,1);
theta4 = zeros(15,1);


iterations = 1500;
alpha = 0.01;

plot(x,y, 'rx','MarkerSize',10);
title('training examples')

J = Untitled7(x,y,theta);
J2 = Untitled7(x2,y,theta2);
J3 = Untitled7(x3,y,theta3);
J4 = Untitled7(x4,y,theta);



%Gradient Descent
[theta, Js] = GradientDescent(x, y, theta, alpha, iterations);
hold on;
plot(x(:, 2), x * theta, '-');
legend('Training data', 'Linear regression');
hold off;

%Normal Equation Method
x = data(:, 4:18); %feature matrix

[thetaN] = NormalEquation(x,y);


