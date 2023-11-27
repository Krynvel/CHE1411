%% CHE 1411L Group 6 Project - Equation of State
%% Question
% Compute and plot the compressibility factor (y) verses pressure (x) for
% the (1) Van del Waal's (2) Redlich-Kwong and (3) Peng-Robinson equations
% of state.

% Compressibility Factor, Z = Pv/RT; where v is the specific volume (V/v).

% Data for n-Butane:
T = 500;                   % Temperature in K
Tc = 425.2;                % Critical temperature in K
Pc = 37.5;                 % Critical pressure in atm
R = 0.08206;               % Gas constant L*atm/mol*K)
P = 1.31;                  % Pressure in atm

% Equations of State:

% Van der Waal: 
% (P)*(v^3) - (P*b + R*T)*(v^2) + (a)*v - a*b = 0
% a = 0.42188*(((R^2)*(Tc^2))/(Pc))
% b = 0.125*((R*Tc)/Pc)
z_vdw = vanderwaal(T,Tc,Pc,R,P);

% Redlich-Kwong:
% (P)*v^3 - (R*T)*v^2 + (a - P*(b^2) - R*T*b)*v - a*b = 0
% a = 0.42748*(((R^2)*(Tc^2))/(Pc))*alpha
% b = 0.08664*((R*Tc)/Pc)
% alpha = (1/(Tr^0.5))
% Tr = T/Tc
z_rk = redlichkwong(T,Tc,Pc,R,P);

% Peng-Robinson:
% (P)*(v^3) + (b*P - R*T)*(v^2) + (a - 3*P*(b^2) - 2*R*T*b)*v + (P*(b^3) +
% R*T*(b^2) - a*b) = 0
% a = 0.45724*(((R^2)*(Tc^2))/(Pc))*alpha
% b = 0.07780*((R*Tc)/Pc)
% alpha = [1 + m*(1 - (Tr^0.5)]^2
% Tr = T/Tc
% m = 0.37464 + 1.54226*w - 0.26992*(w^2)
% w = 0.193
z_pr = pengrobinson(T,Tc,Pc,R,P);

% HINTS:
% 1. Make P, Pc, T, Tc, and R global variables
% 2. Write three functions. One for each of the equations.
% 3. Write a script file that calls the functions using a root finding
% method to determine
% 4. Use the root to calculate the compressibility factor
% 5. Plot the compressibility factor verses pressure


% Note:
% Show all three graphs in the same plot window. Properly label the axis
% etc. 

%% 
plot(P,z_vdw,'*')
grid on
hold on
plot(P,z_rk,'*')
hold on
plot(P,z_pr,'*')
title('Pressure vs. Compressibility Factor')
xlabel('Pressure [atm]')
ylabel('Compressibility Factor [z = PV/RT]')
legend('Van Der Waal','Redlich-Kwong','Peng-Robinson')
hold off
