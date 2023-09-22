function[x]=cbpolicyvec(mu,s)
x = normrnd(mu,s);
x=((x<-4.5)*(-4.5))+((x>9)*9)+((x>=-4.5 & x<=9).*x);
end
