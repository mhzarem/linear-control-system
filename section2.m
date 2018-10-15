% MTLAB for control engineers book
num = [2 5 3 6];
den = [1 6 11 6];
[r,p,k] = residue(num, den);
 % inverse of above 
 r = [-6 3 5];
 p = [2 4 -3];
 k = 4;
 [num, den] = residue(r,p,k);
 printsys(num,den,'x');
[z,p,k] = tf2zp(num, den);
% how to compute the root and make polynomial;
par = [1 2 5 6];
r = roots(par);
p = poly(r);
% defin the system series or parallel
num = 1;
den = [1 6];
sys1 = tf(num, den);
sys2 = tf(num, den);
sys_series = series(sys1, sys2);
sys_parallel = parallel(sys1, sys2);
% feadback system 
sys_g = tf(num, den);
sys_h = tf(num, den);
system = feedback(sys_g, sys_h); %negative feedback 
system = feedback (sys_g, sys_h, +1);
printsys(num,den)






