
clear all
close all
clc

vcomp=floor(randn(10,1)*10)+i.*floor(randn(10,1)*10);
vcomp=vcomp';
[medie,vector,matrice]=functii(vcomp);
