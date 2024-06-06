%%%%% only comapy 2 produces

clc
clear 
close
%% problem assumptions
syms q1 q2
AC1=64-4*q1+(q1)^2;
AC2=80-4*q2+(q2)^2;
TC1=q1*AC1;
TC2=q2*AC2;
p=160-8*(q1+q2);
EU2_single=((q2* subs(p,[q1],[0]))-subs(TC2,[q1],[0]))
q_S=double(solve(diff(EU2_single,q2)))
EU2_single_q=double(((q_S(2,1)*subs(p,[q1,q2],[0,q_S(2,1)]))-subs(TC2,[q1,q2],[0,q_S(2,1)])))