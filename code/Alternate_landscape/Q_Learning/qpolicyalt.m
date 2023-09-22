function[x,i,aim]=qpolicyalt(q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,n)
t=0.1;
s=exp(q1/t)+exp(q2/t)+exp(q3/t)+exp(q4/t)+exp(q5/t)+exp(q6/t)+exp(q7/t)+exp(q8/t)+exp(q9/t)+exp(q10/t)+exp(q11/t)+exp(q12/t);
t1=exp(q1/0.1)./s;
t2=exp(q2/0.1)./s;
t3=exp(q3/0.1)./s;
t4=exp(q4/0.1)./s;
t5=exp(q5/0.1)./s;
t6=exp(q6/0.1)./s;
t7=exp(q7/0.1)./s;
t8=exp(q8/0.1)./s;
t9=exp(q9/0.1)./s;
t10=exp(q10/0.1)./s;
t11=exp(q11/0.1)./s;
t12=exp(q12/0.1)./s;


r=rand(n,1);


x= ((r<=t1).*(-3.8125*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1 & r<=t1+t2).*(-2.4375*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2 & r<=t1+t2+t3).*(-1.0625*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3 & r<=t1+t2+t3+t4).*(0.3125*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4 & r<=t1+t2+t3+t4+t5).*(1.6875*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4+t5 & r<=t1+t2+t3+t4+t5+t6).*(3.0625*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4+t5+t6 & r<=t1+t2+t3+t4+t5+t6+t7).*(4.4375*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4+t5+t6+t7 & r<=t1+t2+t3+t4+t5+t6+t7+t8).*(5.8125*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4+t5+t6+t7+t8 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9).*(7.1875*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4+t5+t6+t7+t8+t9 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10).*(8.5625*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4+t5+t6+t7+t8+t9+t10 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11).*(9.9375*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11+t12).*(11.3125*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))));
i= ((r<=t1).*(ones(n,1)))+((r>t1 & r<=t1+t2).*(2*ones(n,1)))+((r>t1+t2 & r<=t1+t2+t3).*(3*ones(n,1)))+((r>t1+t2+t3 & r<=t1+t2+t3+t4).*(4*ones(n,1)))+((r>t1+t2+t3+t4 & r<=t1+t2+t3+t4+t5).*(5*ones(n,1)))+((r>t1+t2+t3+t4+t5 & r<=t1+t2+t3+t4+t5+t6).*(6*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6 & r<=t1+t2+t3+t4+t5+t6+t7).*(7*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7 & r<=t1+t2+t3+t4+t5+t6+t7+t8).*(8*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7+t8 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9).*(9*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7+t8+t9 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10).*(10*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7+t8+t9+t10 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11).*(10*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11+t12).*(10*ones(n,1)));
aim= ((r<=t1).*(-3.8125*ones(n,1)))+((r>t1 & r<=t1+t2).*(-2.4375*ones(n,1)))+((r>t1+t2 & r<=t1+t2+t3).*(-1.0625*ones(n,1)))+((r>t1+t2+t3 & r<=t1+t2+t3+t4).*(0.3125*ones(n,1)))+((r>t1+t2+t3+t4 & r<=t1+t2+t3+t4+t5).*(1.6875*ones(n,1)))+((r>t1+t2+t3+t4+t5 & r<=t1+t2+t3+t4+t5+t6).*(3.0625*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6 & r<=t1+t2+t3+t4+t5+t6+t7).*(4.4375*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7 & r<=t1+t2+t3+t4+t5+t6+t7+t8).*(5.8125*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7+t8 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9).*(7.1875*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7+t8+t9 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10).*(8.5625*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7+t8+t9+t10 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11).*(9.9375*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11+t12).*(11.3125*ones(n,1)));

end

