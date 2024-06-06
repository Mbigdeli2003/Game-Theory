%% maximizing the summation of payoffs

clc
clear
close all
fun=@(x)-((-x(1)*(8*x(1) + 8*x(2) - 160) - x(1)*(x(1)^2 - 4*x(1) + 64) - 134)+...
    (-x(2)*(8*x(1) + 8*x(2) - 160) - x(2)*(x(2)^2 - 4*x(2) + 80) - 62));
x0 = [0,0];
A = [1,1];
b = [20];
% options = optimoptions('fmincon','SpecifyObjectiveGradient',true);
% options = optimoptions('fmincon','Display','iter','Algorithm','sqp');
x = fmincon(fun,x0,A,b,[],[],[0,0],[],[],[])
%% problem assumptions
syms q1 q2
AC1=64-4*q1+(q1)^2;
AC2=80-4*q2+(q2)^2;
TC1=q1*AC1;
TC2=q2*AC2;
p=160-8*(q1+q2);
EU1=(q1*p)-TC1
EU2=(q2*p)-TC2
Q1_c_S=x(1,1)
Q2_c_S=x(1,2)
EU1_c=double((Q1_c_S* subs(p,[q1,q2],[Q1_c_S,Q2_c_S]))-subs(TC1,[q1,q2],[Q1_c_S,Q2_c_S]))
EU2_c=double((Q2_c_S* subs(p,[q1,q2],[Q1_c_S,Q2_c_S]))-subs(TC2,[q1,q2],[Q1_c_S,Q2_c_S]))

