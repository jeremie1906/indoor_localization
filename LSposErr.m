function out=LSposErr(dis,dis_err,anchor)
num=length(dis);
x=anchor(:,1);
y=anchor(:,2);
r=dis;
rr=dis_err;
len=num-1;
A=zeros(len,2);
b=zeros(len,1);
for N=1:len
   A(N,1)=x(N)-x(num);
   A(N,2)=y(N)-y(num);
   %b(N)=r(N)^2-r(num)^2-x(N)^2+x(num)^2-y(N)^2+y(num)^2;
   b(N)=(2*rr(N)*r(N)+rr(N)^2)-(2*rr(num)*r(num)+rr(num)^2);
end
A=-2*A;

X=A\b;

out=X;