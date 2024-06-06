clc
clear
close all
%% problem assumptions
syms q1 q2
AC1=64-4*q1+(q1)^2;
AC2=80-4*q2+(q2)^2;
TC1=q1*AC1;
TC2=q2*AC2;
p=160-8*(q1+q2);
EU1=(q1*p)-TC1
EU2=(q2*p)-TC2
%% Q2_1_Efficeint points
MC1=diff(TC1,q1);
MC2=diff(TC2,q2);
disp('MC1-p and MC2-p')
%%%  wrirting nonlinear functions to obtian the efficient points
f_E_1=MC1-p
f_E_2=MC2-p
fun_1=@root2d_e;
x0=[0,0];
Q_e=fsolve(fun_1,x0)
Q1_e=Q_e(1,1);
Q2_e=Q_e(1,2);
EU1_E=double((Q1_e* subs(p,[q1,q2],[Q1_e,Q2_e]))-subs(TC1,[q1,q2],[Q1_e,Q2_e]))
EU2_E=double((Q2_e* subs(p,[q1,q2],[Q1_e,Q2_e]))-subs(TC2,[q1,q2],[Q1_e,Q2_e]))
%% Q2_2_ noncooperative Nash Equilibruim
clear x0
D_EU1=diff(EU1,q1)
D_EU2=diff(EU2,q2)
fun=@root2d;
x0=[0,0];
Q_n=fsolve(fun,x0)
Q1_n=Q_n(1,1);
Q2_n=Q_n(1,2);
EU1_n=double((Q1_n* subs(p,[q1,q2],[Q1_n,Q2_n]))-subs(TC1,[q1,q2],[Q1_n,Q2_n]))
EU2_n=double((Q2_n* subs(p,[q1,q2],[Q1_n,Q2_n]))-subs(TC2,[q1,q2],[Q1_n,Q2_n]))
