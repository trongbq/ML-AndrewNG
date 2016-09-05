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
% temp_sum = 0;
% for i=1:m
%     temp_sum = temp_sum + ( -y(i)*log(sigmoid(X(i,:)*theta)) - (1-y(i))*log(sigmoid(1-X(i,:)*theta)) );
% end
% J = temp_sum/m;
% 
% temp_sum = zeros(size(theta));
% for i=1:m
%     temp_sum = temp_sum + ((sigmoid(X(i,:)*theta) - y(i))*X(i,:))';
% end
% grad = temp_sum/m;
h = sigmoid(X*theta);
J = (1/m)*(-y'* log(h) - (1 - y)'*log(1-h));
grad = (1/m)*X'*(h - y);
% =============================================================

end
