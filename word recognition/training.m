function threshold = training(l,pos,neg)
clc;
k=1;
y=zeros(1,l);
clc;
while (k<=l)
disp(pos)
y(k)=feature();
k=k+1;
disp("ok")
end
k=1;
n=zeros(1,l);
while (k<=l)
disp(neg);
n(k)=feature();
k=k+1;
disp("ok");
end
clc
yes=median(y);
no=median(n);
threshold=(yes+no)/2;
