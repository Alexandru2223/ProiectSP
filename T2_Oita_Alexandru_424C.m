clear all
close all
clc
% Determinarea seriei Fourier complexe
% Nr ordine: 19
N = 25; % 50 de coeficienti deoarece suma este de la -N la N
T=40; % perioada
C = zeros(1,2*N+1); % initializam vectorul care va contine coeficientii seriei cu 0
w0=2*pi/T; % pulsatia
D=19; % durata impuls
duty=(D/T)*100; % factor de umplere
t=0:0.002:160; % pasul este de 2 ms, sunt afisate 4 perioade pe ecran, 160/40=4
semnal=(1*square(w0*t,duty)+abs(1*square(w0*t,duty)))/2;
% Vectorul C() va contine coeficientii seriei Fourier complexe
% pentru frecventele de la -N*w0 la N*w0, ceea ce inseamna ca
% vectorul va avea 2*N+1 valori
for n=-N:N
 % determinam coeficientii complexi
 C(n+N+1) = 1/T * integral(@(t)((1*square(w0*t,duty)+abs(1*square(w0*t,duty)))/2.*exp(-1j*n*w0*t)),0,T); % functia dupa care determinam coeficientii seriei
 % pentru N=-25 avem primul element al vectorului
 % Trebuie sa verificam daca valoriile pentru partea reala si imaginara
 % sunt foarte mici, dar nu 0 si vom ajusta valorile cu 0
 re = real(C(n+N+1)); % partea reala
 im = imag(C(n+N+1)); % partea imaginara
 if abs(re)<10^-10
 re = 0;
 end
 if abs(im)<10^-10
 im = 0;
 end
 % Dupa ce ajnustam valorile care sunt foarte apropiate de 0
 % vom reconstrui numarul complex din partea reala si imaginara
 C(n+N+1)=re+1j*im;
end
figure(1);
subplot(3,1,1);
plot(t,semnal), grid, title("Semnal initial") %afisam semnalul dreptunghiular cu perioada T si factorul de umplere duty
axis ([0 160 -0.4 1.4]) % am marit domeniul pentru a vedea mai bine semnalul ( 4 perioade )
subplot(3,1,2);
stem((-N:N)*w0,abs(C)), grid, title("Spectrul de amplitudini"); %afisare spectru de aplitudini
semnalnou =0; % definim semnalul ce trebuie reconstruit
for n=-N:N
    semnalnou=semnalnou+C(n+N+1)*exp(1j*n*w0*t); % formula pentru a reconstrui semnalul se calculeaza ca
    %fiind suma din fiecare coeficient inmultit cu exponentiala
end 
subplot(3,1,3)
hold on 
plot(t,semnal), grid, title("Semnal reconstruit")
plot(t,real(semnalnou),':r',t,imag(semnalnou),':r')
hold off
%hold on si hold off se foloseste pentru a mentine ambele semnale in
%acelasi timp afisate pe grafic
% O functie periodica poate fi analizata utilizand serie Fourier care
% imparte functia intr-o serie de sume de functii sinusoidale
% In cazul semnalului reconstruit, cu cat acesta ar avea mai multi
% coeficienti, cu atat acesta s-ar asemana mai mult cu semnalul original
