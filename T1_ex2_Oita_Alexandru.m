clear all
close all
clc

T=5; %perioada
nivmaxim=1; %nivel maxim
nivminim=-2; %nivel minim
F=1/T %frecventa
w=2*pi*F %pulsatie
A=(nivmaxim+abs(nivminim))/2; %amplitudine
Ucc=-0.5 %componenta continua
%2ms

t1 = 0:0.002:100;
x1 = Ucc + A*sawtooth(w*t1, 0.6); %0.6 pentru ca panta sa fie 1V/s
subplot(3,1,1)
plot(t1,x1,'.-');
axis([0 15 -2 2]);
xlabel('Timp[s]')
ylabel('Amplitudine')
title('Triunghiular')
grid;

%20ms

t2 = 0:0.02:100;
x2 = Ucc + A*sawtooth(w*t2, 0.6);
subplot(3,1,2)
plot(t2,x2,'.-');
axis([0 15 -2 2]);
xlabel('Timp[s]')
ylabel('Amplitudine')
title('Triunghiular')
grid;

%200ms

t3 = 0:0.2:100;
x3 = Ucc + A*sawtooth(w*t3, 0.6);
subplot(3,1,3)
plot(t3,x3,'.-');
axis([0 15 -2 2]);
xlabel('Timp[s]')
ylabel('Amplitudine')
title('Triunghiular')
grid;