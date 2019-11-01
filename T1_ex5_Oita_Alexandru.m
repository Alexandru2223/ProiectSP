clear all
close all
clc
A=1.5; %Amplitudine
T=4; %Perioada
F=1/T; %Frecventa
w=2*pi*F; %Pulsatie
%2ms

t1=0:0.002:100;                   
s1=abs(A*sin(w*t1)); %redresare dubla alternanta
subplot(3,1,1);
plot(t1,s1,'.-')
axis([0 16 0 2]);
xlabel('Timp[s])')
ylabel('Amplitudine')
title('Sin-DA 2ms')
grid;

%20ms

t2=0:0.02:100;                   
s2=abs(A*sin(w*t2));
subplot(3,1,2);
plot(t2,s2,'.-')
axis([0 16 0 2]);
xlabel('Timp[s])')
ylabel('Amplitudine')
title('Sin-DA 20ms')
grid;

%200ms

t3=0:0.2:100;                   
s3=abs(A*sin(w*t3)); 
subplot(3,1,3);
plot(t3,s3,'.-')
axis([0 16 0 2]);
xlabel('Timp[s])')
ylabel('Amplitudine')
title('Sin-DA 200ms')
grid;