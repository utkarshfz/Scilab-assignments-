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
n=length(a(1,:));
aug=[a,eye(n,n)];
for j=1:n-1
    for i=j+1:n
        aug(i,j:2*n)=aug(i,j:2*n)-aug(i,j)/aug(j,j)*aug(j,j:2*n);
        end
end
for j=n:-1:2
    aug (1:j-1,:)=aug(1: j-1,:)-aug(1:j-1,j)/aug(j,j)*aug(j,:);
end
for j=1:n
    aug(j,:)=aug(j,:)/aug(j,j);
end
b=aug(:,n+1:2*n);
disp(b,"the inverse of a is ");

