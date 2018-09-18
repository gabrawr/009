clc
clear all

%valores iniciais
iv=[0.2,0.8,74,93]'

%parametros: [mi1, ks1, mi2, ks2, k1, k2, k3, k6]
ip=[4.2912e-1 1.3065e1 2.6493 5.7127e2 3.1204e-1 6.2776e-2 3.1473 2.7862e2]


v_1=@(s1) (ip(1)*s1)/(ip(2)+s1)
v_2=@(s2) (ip(3)*s2)/(ip(4)+s2)

x_1=@ (x) v_1(x(3))*x(1)
x_2=@ (x) v_2(x(4))*x(2)
s_1=@ (x) v_1(x(3))*(-ip(5))*x(1)
s_2=@ (x) ip(6)*v_1(x(3))*x(1)-(ip(7))*v_2(x(4))*x(2)

f=@(x) [x_1(x);x_2(x);s_1(x);s_2(x)]


x=rk(f,1/4,iv,160)

plot(x')






