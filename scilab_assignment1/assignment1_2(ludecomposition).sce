
str = input("Enter a space-separated 3x3 matrix ", "string")
v = evstr(strsplit(str, " "))


a11=v(1)
a12=v(2)
a13=v(3)
a21=v(4)
a22=v(5)
a23=v(6)
a31=v(7)
a32=v(8)
a33=v(9)



a=[a11,a12,a13;a21,a22,a23;a31,a32,a33]
u=a;
disp(a,'the given matrix is a=')
m=det(u(1,1));
n=det(u(2,1));
as=n/m;
u(2,:)=u(2,:)-u(1,:)/(m/n);
n=det(u(3,1));
b=n/m;
u(3,:)=u(3,:)-u(1,:)/(m/n);
m=det(u(2,2));
n=det(u(3,2));
c=n/m;
u(3,:)=u(3,:)-u(2,:)/(m/n);
disp(u,'the upper triangular matrix is u=')
l=[1,0,0;as,1,0;b,c,1];
disp(l,'the lower triangular matrix is l=')
