function [medie,vector,matrice] = functii(vcomp)
medie=mean(real(vcomp)) %medie aritmetica parti reale
vector=vcomp.^2 %elementele initiale ridicate la patrat
matrice=vcomp*vcomp' %vectorul initial inmultit cu transpusul sau
 
