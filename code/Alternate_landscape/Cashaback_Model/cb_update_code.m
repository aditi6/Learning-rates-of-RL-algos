n=10000;
cbxstp=zeros(n,450);
cbrewstp=zeros(n,450);
cbmustp=zeros(n,450);
cbsstp=zeros(n,450);
mu=zeros(n,1);
s=0.81*ones(n,1);
for a=1:450
x=cbpolicyalt(mu,s);
r=steepalt(x,n);
cbxstp(:,a)=x;
cbrewstp(:,a)=r;
cbmustp(:,a)=mu;
cbsstp(:,a)=s;
mu=(r.*(mu+0.4*(x-mu)))+((r==0).*mu);
s=(r.*(0.81*ones(n,1)))+((r==0).*(1.21*ones(n,1)));
end

cbxsh=zeros(n,450);
cbrewsh=zeros(n,450);
cbmush=zeros(n,450);
cbssh=zeros(n,450);
mu=zeros(n,1);
s=0.81*ones(n,1);
for a=1:450
x=cbpolicyalt(mu,s);
r=shallowalt(x,n);
cbxsh(:,a)=x;
cbrewsh(:,a)=r;
cbmush(:,a)=mu;
cbssh(:,a)=s;
mu=(r.*(mu+0.4*(x-mu)))+((r==0).*mu);
s=(r.*(0.81*ones(n,1)))+((r==0).*(1.21*ones(n,1)));
end

for t=1:450
trials(1,t)=t;
end

cbxstpmean=mean(cbxstp);
cbxshmean=mean(cbxsh);
plot(trials,cbxstpmean);
hold on;
plot(trials,cbxshmean);
xlabel('Trials');
ylabel('Reach Angle');


[fitresult, gof, shtc] = createFit(trials, cbxshmean);
shtc
[fitresult, gof, stptc] = createFit(trials, cbxstpmean);
stptc
