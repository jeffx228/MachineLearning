function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%



z = X*theta;
h = sigmoid(z);
H=h.';
h1=log(H)*(-y);
h2=(log(1-H))*(1-y);
J=(h1-h2)/m;


Z2 = X * theta;
A2 = sigmoid(Z2);
D = (A2 - y);
grad(1) = D' * X(:,1);
grad(2) = D' * X(:,2);
grad(3) = D' * X(:,3);
grad = grad/m;




% =============================================================

end
