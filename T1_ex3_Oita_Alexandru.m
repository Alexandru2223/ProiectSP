nivela=[-1 1]
t1=0:0.002:5; %pas 2ms
t2=0:0.02:5; %pas 20ms
t3=0:0.2:5; %pas 200ms

figure (1)
subplot(3,1,1),title('SMA - 2ms')
hold on 
for i=0:0.25:10
    s=datasample(nivela,1);
    plot(t1, s*rectpuls(t1-i,0.25))
end
hold off
subplot(3,1,2), title('SMA - 20ms')
hold on
for i=0:0.25:10
    s=datasample(nivela,1);
    plot(t2, s*rectpuls(t2-i,0.25))
end
hold off
subplot(3,1,3),title('SMA - 200ms')
hold on
for i=0:0.25:10
    s=datasample(nivela,1);
    plot(t3, s*rectpuls(t3-i,0.25))
end
hold off

nivelb=[-3 -1 1 3]

figure(2)
subplot(3,1,1),title('SMA - 2ms')
hold on
for i=0:0.25:10
    s=datasample(nivelb,1);
    plot(t1, s*rectpuls(t1-i,0.25))
end
hold off
subplot(3,1,2),title('SMA - 20ms')
hold on
for i=0:0.25:10
    s=datasample(nivelb,1);
    plot(t2, s*rectpuls(t2-i,0.25))
end
hold off
subplot(3,1,3),title('SMA - 200ms')
hold on
for i=0:0.25:10
    s=datasample(nivelb,1);
    plot(t3, s*rectpuls(t3-i,0.25))
end
hold off

nivelc=[-5 -3 -1 1 3 5]
figure(3)
subplot(3,1,1),title('SMA - 2ms')
hold on
for i=0:0.25:10
    s=datasample(nivelc,1);
    plot(t1, s*rectpuls(t1-i,0.25))
end
hold off
subplot(3,1,2),title('SMA - 20ms')
hold on
for i=0:0.25:10
    s=datasample(nivelc,1);
    plot(t2, s*rectpuls(t2-i,0.25))
end
hold off
subplot(3,1,3),title('SMA - 200ms')
hold on
for i=0:0.25:10
    s=datasample(nivelc,1);
    plot(t3, s*rectpuls(t3-i,0.25))
end
hold off

niveld=[-7 -5 -3 -1 1 3 5 7]
figure(4)
subplot(3,1,1),title('SMA - 2ms')
hold on
for i=0:0.25:10
    s=datasample(niveld,1);
    plot(t1, s*rectpuls(t1-i,0.25))
end
hold off
subplot(3,1,2),title('SMA - 20ms')
hold on
for i=0:0.25:10
    s=datasample(niveld,1);
    plot(t2, s*rectpuls(t2-i,0.25))
end
hold off
subplot(3,1,3),title('SMA - 200ms')
hold on
for i=0:0.25:10
    s=datasample(niveld,1);
    plot(t3, s*rectpuls(t3-i,0.25))
end
hold off