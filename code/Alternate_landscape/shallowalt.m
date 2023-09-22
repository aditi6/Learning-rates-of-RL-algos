function[r1]=shallowalt(x,n)
y=(((x>=-3) & (x<6)).*(((1/9)*x)+(1/3)))+(((x>=6) & (x<9)));
r=rand(n,1);
r1=y>r;
