function[r1]=steepalt(x,n)
y=(((x>=-1.5) & (x<3)).*(((2/9)*x)+(1/3)))+(((x>=3) & (x<9)));
r=rand(n,1);
r1=y>r;