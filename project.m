clc
close all
clear all
%Define the vectors
A = input('enter coordinates of vector A between square bracket, like [1 2 3] ');
B= input('enter coordinates of vector B between square bracket, like [1 2 3] ');

%Take the cross product
C = cross(A,B);
fprintf('AxB = [ %1.4f %1.4f %1.4f]\n\n', C)

A_mag = norm(A);
B_mag = norm(B);
fprintf('Magnitude of vector A = %1.4f \n', A_mag)
fprintf('Magnitude of vector B = %1.4f \n', B_mag)

% Then, find the angle between vectors A and B.
theta = 180/pi * acos(dot(A,B)/(A_mag * B_mag));
fprintf('Angle between vectors A and B = %1.4f deg\n', theta);

% Finally, solve for the magnitude of the C vector.
C_mag = A_mag * B_mag * sin(theta * pi/180);
fprintf('Magnitude of vector C = %1.4f \n\n', C_mag);

D=cross(A,B)/norm(cross(A,B)); 
alpha = acos(D(1)) * 180/pi;
beta = acos(D(2)) * 180/pi;
gamma = atan(D(3)) * 180/pi;
fprintf('alpha = %1.4f deg from +x\n', alpha)
fprintf('beta = %1.4f deg from +y\n', beta)
fprintf('gamma = %1.4f deg from +x\n', gamma)
x = [ 0 0 0;A];
y = [ 0 0 0;B];
z = [ 0 0 0;C];
plot3(x,y,z,'-o','LineWidth',2,'MarkerSize',5);
set(gca,'FontSize',18)
grid;
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');
legend('C-blue','B-green', 'A-red',2);

