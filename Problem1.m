% Problem 1
% Electric Field of Line Charges (2D)
% Draw the electric field of a line of charges with many point charges

% Setup Constants
epsilon_0 = 8.854187817e-12; 
N = 100;
a = linspace(0, 1, N);

% Setup Grid
[x, y] = meshgrid(-0.5:0.01:1.5, -0.2:0.01:0.2);
Ex = zeros(size(x));
Ey = zeros(size(y));



% Calculate Electric Field
for i = 1:N
    q = 1e-9;
    dx = x - a(i);
    dy = y - 0;
    r = sqrt(dx.^2 + dy.^2);
    Ex = Ex + (q / (4 * pi * epsilon_0)) * (dx ./ r.^3);
    Ey = Ey + (q / (4 * pi * epsilon_0)) * (dy ./ r.^3);
end
for i = 1:201
    Ex(21, i) = 0;
end

% Quiver Plot Electric Field
quiver(x, y, Ex, Ey, AutoScaleFactor=5); % Adjust AutoScaleFactor to change arrow size
title('Electric Field of Line Charges (2D)');
xlabel('X');
ylabel('Y');
axis equal; 
grid on;
