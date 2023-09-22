n=10000;
gradrewstp=zeros(n,450);
gradaimstp=zeros(n,450);
gradxstp=zeros(n,450);
gradrrstp=zeros(n,450);

mu=zeros(n,1);
r=0.5*ones(n,1);
for a=1:450
aim=gradpolicyvec(mu,n);
x = normrnd(mu,(0.8*ones(n,1)));
ri=steepvector(x,n);
gradrewstp(:,a)=ri;
gradaimstp(:,a)=aim;
gradxstp(:,a)=x;
gradrrstp(:,a)=r;
e=x-mu;
mu=mu+(0.4*((ri-r).*e));
r=r+(0.18*(ri-r));
end



gradrewsh=zeros(n,450);
gradaimsh=zeros(n,450);
gradxsh=zeros(n,450);
gradrrsh=zeros(n,450);

mu=zeros(n,1);
r=0.5*ones(n,1);
for a=1:450
aim=gradpolicyvec(mu,n);
x = normrnd(mu,(0.8*ones(n,1)));
ri=shvector(x,n);
gradrewsh(:,a)=ri;
gradaimsh(:,a)=aim;
gradxsh(:,a)=x;
gradrrsh(:,a)=r;
e=x-mu;
mu=mu+(0.4*((ri-r).*e));
r=r+(0.18*(ri-r));
end

trials=1:450;
gradxstpmean=mean(gradxstp);
gradxshmean=mean(gradxsh);


plot(trials,gradxstpmean);
hold on;
plot(trials,gradxshmean);
xlabel('Trials');
ylabel('Reach Angle');


