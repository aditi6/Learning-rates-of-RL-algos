function[x,i,aim]=qpolicyvec(q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,n)
t=0.15;
s=exp(q1/t)+exp(q2/t)+exp(q3/t)+exp(q4/t)+exp(q5/t)+exp(q6/t)+exp(q7/t)+exp(q8/t)+exp(q9/t)+exp(q10/t);
t1=exp(q1/t)./s;
t2=exp(q2/t)./s;
t3=exp(q3/t)./s;
t4=exp(q4/t)./s;
t5=exp(q5/t)./s;
t6=exp(q6/t)./s;
t7=exp(q7/t)./s;
t8=exp(q8/t)./s;
t9=exp(q9/t)./s;
t10=exp(q10/t)./s;


r=rand(n,1);


x= ((r<=t1).*(-3.825*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1 & r<=t1+t2).*(-2.475*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2 & r<=t1+t2+t3).*(-1.125*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3 & r<=t1+t2+t3+t4).*(0.225*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4 & r<=t1+t2+t3+t4+t5).*(1.575*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4+t5 & r<=t1+t2+t3+t4+t5+t6).*(2.925*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4+t5+t6 & r<=t1+t2+t3+t4+t5+t6+t7).*(4.275*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4+t5+t6+t7 & r<=t1+t2+t3+t4+t5+t6+t7+t8).*(5.625*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4+t5+t6+t7+t8 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9).*(6.975*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))))+((r>t1+t2+t3+t4+t5+t6+t7+t8+t9 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10).*(8.325*ones(n,1)+normrnd(zeros(n,1),0.8*ones(n,1))));
i= ((r<=t1).*(ones(n,1)))+((r>t1 & r<=t1+t2).*(2*ones(n,1)))+((r>t1+t2 & r<=t1+t2+t3).*(3*ones(n,1)))+((r>t1+t2+t3 & r<=t1+t2+t3+t4).*(4*ones(n,1)))+((r>t1+t2+t3+t4 & r<=t1+t2+t3+t4+t5).*(5*ones(n,1)))+((r>t1+t2+t3+t4+t5 & r<=t1+t2+t3+t4+t5+t6).*(6*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6 & r<=t1+t2+t3+t4+t5+t6+t7).*(7*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7 & r<=t1+t2+t3+t4+t5+t6+t7+t8).*(8*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7+t8 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9).*(9*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7+t8+t9 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10).*(10*ones(n,1)));
aim= ((r<=t1).*(-3.825*ones(n,1)))+((r>t1 & r<=t1+t2).*(-2.475*ones(n,1)))+((r>t1+t2 & r<=t1+t2+t3).*(-1.125*ones(n,1)))+((r>t1+t2+t3 & r<=t1+t2+t3+t4).*(0.225*ones(n,1)))+((r>t1+t2+t3+t4 & r<=t1+t2+t3+t4+t5).*(1.575*ones(n,1)))+((r>t1+t2+t3+t4+t5 & r<=t1+t2+t3+t4+t5+t6).*(2.925*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6 & r<=t1+t2+t3+t4+t5+t6+t7).*(4.275*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7 & r<=t1+t2+t3+t4+t5+t6+t7+t8).*(5.625*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7+t8 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9).*(6.975*ones(n,1)))+((r>t1+t2+t3+t4+t5+t6+t7+t8+t9 & r<=t1+t2+t3+t4+t5+t6+t7+t8+t9+t10).*(8.325*ones(n,1)));

end


