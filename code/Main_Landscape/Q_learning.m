
s=0.85;
syms t
f = exp((-(t)^2)/(2*(s)^2))/(sqrt(2*pi)*s);
r1 = vpaintegral(f,t,[-4.5,-3.15]);
r2 = vpaintegral(f,t,[-3.15,-1.8]);
r3 = vpaintegral(f,t,[-1.8,-0.45]);
r5 = vpaintegral(f,t,[0.9,2.25]);
r6 = vpaintegral(f,t,[2.25,3.6]);
r7 = vpaintegral(f,t,[3.6,4.95]);
r8 = vpaintegral(f,t,[4.95,6.3]);
r9 = vpaintegral(f,t,[6.3,7.65]);
r10 = vpaintegral(f,t,[7.65,9]);


r4=1-r1-r2-r3-r5-r6-r7-r8-r9-r10;
ar=0.2;
n=10000;

qvalrewstp=zeros(n,450);
qvalintstp=zeros(n,450);
qvalxstp=zeros(n,450);
qvalaimstp=zeros(n,450);


q1 = r1*ones(n,1);
q2 = r2*ones(n,1);
q3 = r3*ones(n,1);
q5 = r5*ones(n,1);
q6 = r6*ones(n,1);
q7 = r7*ones(n,1);
q8 = r8*ones(n,1);
q9 = r9*ones(n,1);
q10 = r10*ones(n,1);
q4= r4*ones(n,1);

clear double
q1=double(q1);
q2=double(q2);
q3=double(q3);
q4=double(q4);
q5=double(q5);
q6=double(q6);
q7=double(q7);
q8=double(q8);
q9=double(q9);
q10=double(q10);

for a=1:450
[x,i,aim]=qpolicyvec(q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,n);
r=steepvector(x,n);
qvalrewstp(:,a)=r;
qvalintstp(:,a)=i;
qvalxstp(:,a)=x;
qvalaimstp(:,a)=aim;
q1=((i==1).*(q1+ar*(r-q1)))+((i~=1).*q1);
q2=((i==2).*(q2+ar*(r-q2)))+((i~=2).*q2);
q3=((i==3).*(q3+ar*(r-q3)))+((i~=3).*q3);
q4=((i==4).*(q4+ar*(r-q4)))+((i~=4).*q4);
q5=((i==5).*(q5+ar*(r-q5)))+((i~=5).*q5);
q6=((i==6).*(q6+ar*(r-q6)))+((i~=6).*q6);
q7=((i==7).*(q7+ar*(r-q7)))+((i~=7).*q7);
q8=((i==8).*(q8+ar*(r-q8)))+((i~=8).*q8);
q9=((i==9).*(q9+ar*(r-q9)))+((i~=9).*q9);
q10=((i==10).*(q10+ar*(r-q10)))+((i~=10).*q10);

end

qvalrewsh=zeros(n,450);
qvalintsh=zeros(n,450);
qvalxsh=zeros(n,450);
qvalaimsh=zeros(n,450);


q1 = r1*ones(n,1);
q2 = r2*ones(n,1);
q3 = r3*ones(n,1);
q5 = r5*ones(n,1);
q6 = r6*ones(n,1);
q7 = r7*ones(n,1);
q8 = r8*ones(n,1);
q9 = r9*ones(n,1);
q10 = r10*ones(n,1);
q4= r4*ones(n,1);

clear double
q1=double(q1);
q2=double(q2);
q3=double(q3);
q4=double(q4);
q5=double(q5);
q6=double(q6);
q7=double(q7);
q8=double(q8);
q9=double(q9);
q10=double(q10);


for a=1:450
[x,i,aim]=qpolicyvec(q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,n);
r=shvector(x,n);
qvalrewsh(:,a)=r;
qvalintsh(:,a)=i;
qvalxsh(:,a)=x;
qvalaimsh(:,a)=aim;
q1=((i==1).*(q1+ar*(r-q1)))+((i~=1).*q1);
q2=((i==2).*(q2+ar*(r-q2)))+((i~=2).*q2);
q3=((i==3).*(q3+ar*(r-q3)))+((i~=3).*q3);
q4=((i==4).*(q4+ar*(r-q4)))+((i~=4).*q4);
q5=((i==5).*(q5+ar*(r-q5)))+((i~=5).*q5);
q6=((i==6).*(q6+ar*(r-q6)))+((i~=6).*q6);
q7=((i==7).*(q7+ar*(r-q7)))+((i~=7).*q7);
q8=((i==8).*(q8+ar*(r-q8)))+((i~=8).*q8);
q9=((i==9).*(q9+ar*(r-q9)))+((i~=9).*q9);
q10=((i==10).*(q10+ar*(r-q10)))+((i~=10).*q10);



end

trials=1:450;


xsteepmean=mean(qvalxstp);
xshmean=mean(qvalxsh);

xstpmean=mean(qvalxstp);
xshmean=mean(qvalxsh);
plot(trials,xstpmean);
hold on;
plot(trials,xshmean);
xlabel('Trials');
ylabel('Reach Angle');


[fitresult, gof, shtc] = createFit(trials, xshmean);
shtc
[fitresult, gof, stptc] = createFit(trials, xstpmean);
stptc

