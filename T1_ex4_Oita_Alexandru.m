clear all
close all
clc

A=0.8; %Amplitudine
T=3; %Perioada
F=1/T; %Frecventa
w=2*pi*F; %Pulsatie
%2ms

t1=0:0.002:100;
s1=A*sin(w*t1);
for i=1:1:length(s1);    %redresare mono alternanta  
    if s1(i)<0;
        s1(i)=0;
    end
end
subplot(3,1,1);
plot(t1,s1,'.-')

axis([0 12 0 1]);
xlabel('Timp[s])')
ylabel('Amplitudine')
title('Sin-MO 2ms')
grid;

%20ms

t2=0:0.02:100;
s2=A*sin(w*t2);
for i2=1:1:length(s2);      
    if s2(i2)<0;
        s2(i2)=0;
    end
end
subplot(3,1,2)
plot(t2,s2,'.-')

axis([0 12 0 1]);
xlabel('Timp[s])')
ylabel('Amplitudine')
title('Sin-MO 2ms')
grid;

%200ms

t3=0:0.2:100;
s3=A*sin(w*t3);
for i3=1:1:length(s3);      
    if s3(i3)<0;
        s3(i3)=0;
    end
end
subplot(3,1,3)
plot(t3,s3,'.-')

axis([0 12 0 1]);
xlabel('Timp[s])')
ylabel('Amplitudine')
title('Sin-MO 200ms')
grid;