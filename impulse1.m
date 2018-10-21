t = 0:0.02:23;
num_hard = [2 5];
den_hard = [2 0.1 4];
num_soft = [2 5];
den_soft = [2 1 4];


figure(1)
y(:,1) = step(num,den,t);
plot(y(:,1))
figure(2)
y(:,2) = impulse(num,den,t);
plot(y(:,2))
figure(3)
y(:,3)= y(:,1) - y(:,2);
plot(y(:,3))
grid on
y(:,4)= heaviside(t);
plot(t,y(:,1),t,y(:,4),t,-y(:,1)+1.5*y(:,4))
legend('output','input','error')
grid on

figure(4)
sys_soft = tf(num_soft,den_soft);
y(:,5)= 0.2*sin(t)+ 0.05*cos(30*t);
lsim(sys_soft,y(:,5),t)
title('soft')
grid on
figure(5)
sys_hard = tf(num_hard,den_hard);
y(:,5)= 0.2*sin(t)+ 0.05*cos(30*t);
lsim(sys_hard,y(:,5),t)
title('hard')
grid on
figure(6)
subplot(2,1,1),step(sys_hard),title('hard')
subplot(2,1,2),step(sys_soft),title('soft')


