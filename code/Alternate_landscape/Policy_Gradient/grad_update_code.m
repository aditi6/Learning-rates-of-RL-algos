n=10000;
gradrewstp=zeros(n,600);
gradaimstp=zeros(n,600);
gradxstp=zeros(n,600);
gradrrstp=zeros(n,600);

mu=zeros(n,1);
r=0.5*ones(n,1);
for a=1:600
aim=gradpolicyalt(mu,n);
x = normrnd(mu,(0.8*ones(n,1)));
ri=steepalt(x,n);
gradrewstp(:,a)=ri;
gradaimstp(:,a)=aim;
gradxstp(:,a)=x;
gradrrstp(:,a)=r;
e=x-mu;
mu=mu+(0.95*((ri-r).*e));
r=r+(0.18*(ri-r));
end


gradrewsh=zeros(n,600);
gradaimsh=zeros(n,600);
gradxsh=zeros(n,600);
gradrrsh=zeros(n,600);

mu=zeros(n,1);
r=0.5*ones(n,1);
for a=1:600
aim=gradpolicyalt(mu,n);
x = normrnd(mu,(0.8*ones(n,1)));
ri=shallowalt(x,n);
gradrewsh(:,a)=ri;
gradaimsh(:,a)=aim;
gradxsh(:,a)=x;
gradrrsh(:,a)=r;
e=x-mu;
mu=mu+(0.95*((ri-r).*e));
r=r+(0.18*(ri-r));
end

trials=1:600;
gradxstpmean=mean(gradxstp);
gradxshmean=mean(gradxsh);


plot(trials,gradxstpmean);
hold on;
plot(trials,gradxshmean);
xlabel('Trials');
ylabel('Reach Angle');


[fitresult, gof, shtc] = createFit(trials, gradxshmean);
shtc
[fitresult, gof, stptc] = createFit(trials, gradxstpmean);
stptc


