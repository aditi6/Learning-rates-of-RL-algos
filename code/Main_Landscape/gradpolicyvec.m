function[x]=gradpolicyvec(mu,n)
x = normrnd(mu,(0.6*ones(n,1)));
x=((x<-4.5)*(-4.5))+((x>9)*9)+((x>=-4.5 & x<=9).*x);
end
