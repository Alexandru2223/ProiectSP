clear all
close all
clc

a=0:0.1:2;
b=linspace(1,1,length(a));
%lungimea lui b trebuie sa fie acceeasi ca a lui a
b=b';
inmultire1=a*b
inmultire2=b*a
inmultirelement1=a.*b
inmultireelement2=b.*a

%La inmultirea element cu element se obtin aceeasi vectori