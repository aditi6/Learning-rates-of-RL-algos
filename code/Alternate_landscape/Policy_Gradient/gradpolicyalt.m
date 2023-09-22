function[x]=gradpolicyalt(mu,n)
x = normrnd(mu,(0.6*ones(n,1)));
x=((x<-4.5)*(-4.5))+((x>12)*12)+((x>=-4.5 & x<=12).*x);
end
