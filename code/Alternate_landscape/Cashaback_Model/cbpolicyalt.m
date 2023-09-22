function[x]=cbpolicyalt(mu,s)
x = normrnd(mu,s);
x=((x<-4.5)*(-4.5))+((x>12)*12)+((x>=-4.5 & x<=12).*x);
end
