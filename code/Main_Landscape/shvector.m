function[r1]=shvector(x,n)
y=(((x>=-3) & (x<3)).*(((1/9)*x)+(1/3)))+(((x>=3) & (x<6))*2/3);
r=rand(n,1);
r1=y>r;
