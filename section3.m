% transient_response_analysis
wn = 4 ; 
damping_ratio = 0.2 ; 
[num0, den] = ord2(wn, damping_ratio);
num = [2, 3];
printsys(num,den,'s');
t = 0:0.01:10;
step(num, den,t);
%text(2.2, 0.3,'salam')
gtext('text')