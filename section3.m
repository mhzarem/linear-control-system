% transient_response_analysis
wn = 4 ; 
damping_ratio = 0.4 ; 
[num0, den] = ord2(wn, damping_ratio);
num = [2, 3];
printsys(num,den,'s');

t = 0:0.01:20;
y(:,1) = step(num, den,t);
%text(2.2, 0.3,'salam')
%gtext('text');
num = [2 2 5];
den = [2 2 7 4];
y(:,2) = step(num,den,t);

plot(t,y)

p = 0;
for i= 1:3
    if p == 4 
        p = 8 ;
    end
    p = p + 1;
end  
t = 0:0.1:50;
a = [1 2 4 5];
b = [1 8 7 6];
z = zeros(501,4);
for i = 1:4
    num =[a(i)] ;
    den = [1 b(i) a(i)];
    z(:,i)= step(num, den,t);
end 
plot(t,z(:,1),'o','MarkerSize',1,'MarkerIndices',1:5:2501);
grid on 