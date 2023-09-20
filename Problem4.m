% Problem 4: Electric Force of Multiple Point Charges (Random) (2D)
% Draw the electric force of a equilateral triangle of charges with many point charges

% Setup Constants
epsilon_0 = 8.854187817e-12; 
n = 3;
a = rand(1, n);
b = rand(1, n);
fx = zeros(n);
fy = zeros(n);
x = zeros(n);
y = zeros(n);

% Calculate Electric Force
for i = 1:n
    q = 1e-9;
    for j = 1:n
        if i == j
        else
        dx = a(i) - a(j);
        dy = b(i) - b(j);
        r = sqrt(dx.^2 + dy.^2);
        x(i)=a(i);
        y(i)=b(i);
        fx(i) = fx(i) + q * (q / (4 * pi * epsilon_0)) * (dx ./ r.^3);
        fy(i) = fy(i) + q * (q / (4 * pi * epsilon_0)) * (dy ./ r.^3);
        end
    end
end

% Quiver Plot Electric Force
quiver(x,y, fx, fy, AutoScaleFactor=5);
title('Electric Force of Multiple Point Charges(Random) (2D)');
xlabel('X');
ylabel('Y');
axis equal; 
grid on;