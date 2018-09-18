function x=euler(f,h,x,N)

for i=1:N
    x(:,i+1)=x(:,i)+h*f(x(:,i));
end
