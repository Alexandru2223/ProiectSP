clear all
close all
clc

T=2; %perioada
fumplere=25; %factor umplere
nivmaxim=0.5; %nivel max
nivminim=-1; %nivel min
F=1/T; %frecventa
w=2*pi*F %pulsatie
A=(nivmaxim+abs(nivminim))/2; %amplitudine
Ucc=-0.25 %componenta continua

%2ms

t1 = 0:0.002:100;

x1 = Ucc + (A*square(w*t1,fumplere));

subplot(3, 1, 1)
plot(t1,x1,'.-')
axis([0 5.4 -1.2 1.2])
xlabel('Timp[s]')
ylabel('Amplitudine')
title('Dreptunghi, pas = 2ms')
grid;

%20ms
t2 = 0:0.02:100;

x2 = Ucc + (A*square(w*t2,fumplere));

subplot(3, 1, 2)
plot(t2,x2,'.-')
axis([0 5.4 -1.2 1.2])
xlabel('Timp[s]')
ylabel('Amplitudine')
title('Dreptunghi, pas = 20ms')
grid;

%200ms

t3 = 0:0.2:100;

x3 = Ucc + (A*square(w*t3,fumplere));

subplot(3, 1, 3)
plot(t3,x3,'.-')
axis([0 5.4 -1.2 1.2])
xlabel('Timp[s]')
ylabel('Amplitudine')
title('Dreptunghi, pas = 200ms')
grid;

