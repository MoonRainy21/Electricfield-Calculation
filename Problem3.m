% Problem 3: Electric Force of Multiple Point Charges (2D)
% Draw the electric force of a equilateral triangle of charges with many point charges

% Setup Constants
epsilon_0 = 8.854187817e-12; 
n = 100;
a = rand(1, n);
b = rand(1, n);
fx = zeros(n);
fy = zeros(n);

% Calculate Electric Force
for i = 1:n
    q = 1e-9;
    for j = 1:n
        if i == j % Prevents division by zero and remove self force
        else
        dx = a(i) - a(j);
        dy = b(i) - b(j);
        r = sqrt(dx.^2 + dy.^2);
        fx(i) = fx(i) + q * (q / (4 * pi * epsilon_0)) * (dx ./ r.^3);
        fy(i) = fy(i) + q * (q / (4 * pi * epsilon_0)) * (dy ./ r.^3);
        end
    end
end