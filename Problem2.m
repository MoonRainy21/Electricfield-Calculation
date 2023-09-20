% Problem 2: Electric Field of Multiple Point Charges(Equilateral Triangle) (2D)
% Draw the electric field of a equilateral triangle of charges with many point charges

% Setup Constants
epsilon_0 = 8.854187817e-12; 
charges = [
    0 0 1e-9;
    0.1 0 1e-9;
    0.1/2 real(sqrt(3)/20) 1e-9;
];

% Setup Grid
[x, y] = meshgrid(-0.2:0.01:0.2, -0.2:0.01:0.2);
Ex = zeros(size(x));
Ey = zeros(size(y));

% Calculate Electric Field
for i = 1:size(charges, 1)
    q = charges(i, 3);
    dx = x - charges(i, 1);
    dy = y - charges(i, 2);
    r = sqrt(dx.^2 + dy.^2);
    Ex = Ex + (q / (4 * pi * epsilon_0)) * (dx ./ r.^3);
    Ey = Ey + (q / (4 * pi * epsilon_0)) * (dy ./ r.^3);
end

% Quiver Plot Electric Field
quiver(x, y, Ex, Ey, AutoScaleFactor=5);
title('Electric Field of Multiple Point Charges(Equilateral Triangle) (2D)');
xlabel('X');
ylabel('Y');
axis equal; 
grid on;
