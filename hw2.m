% question 1
t = 0:0.01:(4*pi);
y(:,1)= cos(t);
y(:,2)= sin(t);
subplot(2,1,1), plot(t,y)
axis([0 13 -1.7 1.3])
title('Simple oscillation of mass-spring')
xlabel('position(m)')
ylabel('time(s)')
legend('cos(t)','sin(t)','Location','SouthWest')
grid on
% question 3
t = 0:0.01:20;
nump = 1;
denp = [1 2 0];
numc = [1 0.1];
denc = [1 0.0125];
sysp = tf(nump,denp);
sysc = tf(numc,denc);
sys_temp = series(sysp,sysc);
sys = feedback(sys_temp, 1);
subplot(2,1,2),step(sys,t)
grid on
axis([0 20 0 3])
% question 2
Hypotenuse(3,4)

function y = Hypotenuse(a,b)
y = sqrt(a^2  + b^2);
end





