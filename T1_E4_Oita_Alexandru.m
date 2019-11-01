clear all
close all
clc

%a)
z=zeros(1,21);
z(6:6:21)=1;
n=0:20;
m=-5:15;
figure(1)
grid on;
subplot(2,1,1), stem(z,n);
subplot(2,1,2), stem(z,m);
figure(2)

%b)
t=abs(10-n);
stem(t,n);
xlabel('functia t')
ylabel('n')

%c)
figure(3)

q=-15:25;
x1=sin((pi/17)*q);
tt=0:50;
x2=cos((pi/sqrt(23))*tt);
plot(q,x1,tt,x2)

figure(4)
subplot(2,1,1), plot(q,x1);
subplot(2,1,2), plot(tt,x2);


figure(5)
subplot(2,1,1), stem(q,x1);
subplot(2,1,2), stem(tt,x2);
