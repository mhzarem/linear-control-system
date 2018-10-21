t = 0:0.02:23;
num = [2 5];
den = [2 3 4];
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

