% Root_Locus Analysis
num = [1 2];
den = [1 3 9];
k = 0:0.5:10000;
[r,k] = rlocus(num,den,k);
figure(1)
plot(r, 'o');
v = [-60 60 -60 60];axis(v);
sgrid
printsys(num,den)
roots(den)
% hold can hold the figure on the next plot
figure(2)
step(num, den);

%displaying diffrent stuff in matlab
disp("the num root is : " + roots(num));
wn = 4 ; 
damping_ratio = 0.4 ; 
[num0, den] = ord2(wn, damping_ratio);
num = [2, 3];
printsys(num,den,'s');

