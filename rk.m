function x=rk(f,h,x,N)

for k=1:N
   k1=f(x(:,k),k(k));
   k2=f(x(:,k)+h*k1/2,k(k)+h/2);
   k3=f(x(:,k)+h*k2/2,k(k)+h/2);
   k4=f(x(:,k)+h*k3,k(k)+h);
    x(:,k+1)=x(:,k)+h*(k1+2*k2+2*k3+k4)/6;
end

