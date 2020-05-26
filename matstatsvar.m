
%%
% I en vindkraftspark st�r tv� mindre vindkraftverk.
% De fungerar oberoende av varandra och sannolikheten att de fungerar vid ett visst tillf�lle �r 24/25, respektive 99/100.
% Ber�kna sannolikheten att precis ett av det tv� kraftverken fungerar.
% Svara med minst tre decimalers noggrannhet.
(24/25)*(1/100)+(1/25)*(99/100);
%%
% Slumpvariabeln X antar v�rdena 0, 1, 2 eller 3 med sannolikheterna 0.53, 0.06, 0.1 respektive 0.31.
% Ber�kna P(X > 1) och ange svaret med minst tv� decimalers noggrannhet.
a=0;
b=1;
c=2;
d=3;
aa=0.25;
bb=0.65;
cc=0.04;
dd=0.06;
answ=cc+dd
%%
% Blodsockerhalten brukar m�tas tv� timmar efter intag av glukosl�sning. 
% Antag att detta 2-timmars-v�rde �r normalf�rdelat med f�rv�ntat v�rde 5.42 mmol/l och standardavvikelse 1.23 mmol/l. 
% Nedsatt glukostolerans �r inte en sjukdom men inneb�r en kraftigt �kad risk f�r diabetes. 
% Nedsatt glukostolerans brukas definieras som blodsockerv�rden mellan 7.8 och 11.0 mmol/l tv� timmar efter intag av glukosl�sning.
% Ber�kna sannolikheten att en slumpm�ssigt vald person har nedsatt glukostolerans?
% Svara med minst tre decimalers noggrannhet.
mu = 5.42;
std = 1.23;
low=normcdf(7.8,mu,std);
upper=normcdf(11,mu,std);
answ1=upper-low;
%%
% Pers och P�ls utgifter (enhet: kr) under en m�nad kan anses vara oberoende normalf�rdelade
% slumpvariabler X med v�ntev�rde 8300 och standardavvikelse 20 respektive Y med v�ntev�rde 9400 och standardavvikelse 45.
% Ber�kna sannolikheten att deras sammanlagda utgifter �verstiger 17795.
% Svara med minst tv� decimalers noggrannhet.
permu=8300;
perstd=20;
paulmu=9400;
paulstd=45;
totmu = permu+paulmu;
x=17795;
totstd = sqrt(perstd^2 + paulstd^2);
answ2=1-normcdf(x,totmu,totstd);
%%
% Medelvikten i ett stickprov best�ende 
% av 9 m�n var 86.67 kg med standardavvikelse 
% 6.46 kg. Vad �r "standard error of the mean",
% d.v.s medelfelet f�r skattningen av f�rv�ntad 
% medelvikt i populationen? Svara med minst tv�
% decimalers noggrannhet.
men=9;
menmu=86.67;
menstd=6.46;
st_m_err=menstd/sqrt(men);
%%
% De tre observationerna 1.4, 0.85 och 0.58 anses vara h�mtade fr�n en
% exponentialf�rdelning med t�thetsfunktion f(x)=lambda*e^{-lambda*x}; x>=0.
% Ange ML-skattningen f�r parametern \lambda?. Svara med minst tre decimalers noggrannhet.
obsvec = [1.4 0.85 0.58];
n = 3;
ML = n/sum(obsvec);
%%
% F�r at testa H_0 : mu = 2.8 mot H_1 : mu=/ 2.8 p� niv� 5% i
% en N(mu, std) skattas det ok�nda std med
% s = sqrt((1/(N-1))*sum(i->N)(x_i - x_hatt)^2) = 0.51 fr�n 9 oberoende
% m�tningar. Nollhypotesen H_0 f�rkastas om x_hatt < k_1 d�r x_hatt �r
% medelv�rdet av de 9 m�tningarna. best�m v�rdet p� k_1 och k_2.
% Svara med tv� decimaler.
s=0.51;
n = 9;
mu = 2.8;
st_mean_err = s/sqrt(n);
t_value = 2.31;
k_1 = mu - t_value*st_mean_err;
k_2 = mu + t_value*st_mean_err;

%%
% En biltillverkare s�ger i sin reklam att den genomsnittliga
% bensinf�rbrukningen f�r en viss modell �r h�gst \mu=0.7?=0.7 l/mil vid
% blandad k�rning. En motororganisation misst�nker att f�rbrukningen i
% sj�lva verket �r h�gre och provk�r under en l�ngre tid nn slumpm�ssigt utvalda
% bilar av modellen. Man antar att br�nslef�rbrukningen �r normalf�rdelad med
% v�ntev�rde \mu? och standardavvikelse 0.20.2 och beslutar sig f�r att testa hypotesen
% H_0 : mu <= 0.7 mot H_1 : mu > 0.7 p� signifikansniv� 0.001. Antag att den sanna br�nslef�rbrukningen
% i sj�lva verket �r 0.9. Hur m�nga bilar ska motororganisationen provk�ra f�r att de, med sannolikheten minst
% 0.9, ska uppt�cka att biltillverkarens p�st�ende �r felaktigt?
% Svara med ett heltal (avrunda upp�t).
mu = 0.7;
std3 = 0.2; 
p = 0.9;
lambda = 3.0902;
n3 = (lambda/mu)^2;
%%
% F�r en viss sjukdom vet man att sannolikheten att en obehandlad
% patient blir frisk brukar vara 0.62. Man vill unders�ka om en viss
% behandling �kar sannolikheten att bli frisk och t�nker d�rf�r unders�ka 25 patienter.
% Man best�mmer sig f�r att dra slutsatsen att sannolikheten att bli frisk �kar om
% minst 21 av de 25 patienterna blir friska.
% Antag att behandlingen har effekt p� sannolikheten att bli frisk �r 0.9.
% Hur stor �r chansen att man uppt�cker att effekten �kar med detta test?
% Svara med minst tre decimalers noggrannhet.
p=0.9;
n=17;
k=21;
binocdf(4,n,0.18)
%%
% F�r de 18 talparen (x1,y1),...,(x18,y18) ans�tter man en enkel linj�r
% regressionsmodell: yi = B0 +B1*xi 0 ei, d�r ei �r oberoende och
% normalf�rdelade. I en analys ber�knas f�ljande 95% intervall:
% I_B0 = (-0.28, 0.78), I_B1 = (-2.27, -1.19).
% Avg�r om p�st�ende �r sanna:
% A: modellen yi = B0 + ei �r att f�redra
% B: modellen yi = B1*xi + ei �r att f�redra
% C: Det finns en positiv korrelation mellan x och y
% D: Fr�n den skattade modellen ser vi att en �kning i xx med 10
% enheter inneb�r att yy minskar i genomsnitt med 17.317.3 enheter.
% Svar: 0, 1, 0, 1
%%
% Antalet julklappar som en slumpm�ssigt vald person
% ur en viss population f�r �r Poissonf�rdelat med v�ntev�rde 3.4.
% Ber�kna sannolikheten att personen f�r minst 1 julklapp.
% Svara med minst tre decimalers noggrannhet.
mu = 3.4;
ans = 1-poisscdf(0, 3.4);
%%
% Slumpvariabeln XX �r normalf�rdelad med v�ntev�rde -6.9 och standardavvikelse 2.3.
% A: Ber�kna P(X <= -8.602)
% B: Ber�kna P(X > -10.189)
% C: Ber�kna P(-10.189 < X <= -8.602)
% Svara p� formen A; B; C, d�r A �r svaret p� f�rsta fr�gan, B �r svaret p� andra fr�gan och C �r svaret p� tredje fr�gan. Svara med minst tv� decimalers noggrannhet.
mu = -6.9;
s=2.3;
A = normcdf(-8.602,mu,s);
B = 1-normcdf(-10.189,mu,s);
C = A-(1-B);
%%
% Ber�kna P(-1 <= Y <= 2) d� Y=2X-2 och X �r normalf�rdelad
% med mu=0.5, std=1.5. Svara med minst tv� decimalers noggrannhet.
Y = 2*0.5 - 2;
std = 2*1.5
ans = normcdf(-1, Y, std);
ans2 = normcdf(2, Y, std);
ansans = ans2-ans;
%%
% M�tningar p� avst�ndet till en ljusstark stj�rna
% beskrivs av en slumpvariabel med v�ntev�rde
% ? och standardavvikelse ?. Man gjorde m�tningar med tv� instrument, I1 och I2 och
% erh�ll f�ljande resultat: se matlab fig 1.
% Efter�t ins�g man att instrument I2 var felinst�lld med ett systematisk fel
% ?. Standardavvikelsen f�r m�tningar fr�n detta instrument �r fortfarande ?.
% a) Uppskatta det systematiska felet ?. Svara med tv� decimaler.
% b) G�r en skattning av ? som baseras p� m�tningar fr�n b�da instrumenten.
% Svara med minst tv� decimalers noggrannhet.
std1 = 0.32;
mu1 = 9.21;
n1 = 8;
std2 = 0.3;
mu2 = 6.47;
n2 = 7;
a = mu2-mu1
b = (std1+std2)/2
%%
%Vi vill j�mf�ra tv� olika m�tmetoder A och B. L�t X vara resultatet av en
% m�tning med metod A och att X ? N(?_A,?) 
% och Y en m�tning med metod B d�r Y ? N(?_B,?).
% Se figur 2 f�r v�rden.
% G�r ett ensidigt, undre begr�nsat 99.9% konfidensintervall, f�r ?_B ? ?_A.
% Svara med intervallets undre gr�ns och med minst tv� decimalers noggrannhet.

lambda = 3.93;
mu_a = 5.3;
s_a = 1.8;
n_a = 6;
mu_b = 8.5;
s_b = 1.4;
n_b = 8;
mean_mu = (mu_a + mu_b)/2;
std = sqrt(((n_a-1)*s_a^2 + (n_b-1)*s_b^2)/((n_a-1)+(n_b-1)))
I = (mu_b-mu_a) - lambda*std*sqrt((1/6)+(1/8))
%%
% Willy studerar styrkefunktionen fr�n testet H_0 : ? = 1.1, H_1 : ? < 1.1 
% vilket baseras p� 14 normalf�rdelade m�tningar med standardavvikelse 1.
% Testets signifikansniv� var 0.001. Vad �r sannolikheten att inte uppt�cka att H_0 
% �r falsk d� ?= 0.3?
% Svara med tre decimaler.
mu = 1.1;
std = 1;
n = 14;
l = 3.0902;
mu1=0.3;
I_low = mu - l*(std/sqrt(n));
1-normcdf(I_low, mu1, std/sqrt(n));
%%
% Antalet olyckstillbud under en m�nad i en viss korsning anses oberoende och Poissonf�rdelade med v�ntev�rde ?.
% G�r ett approximativt 95% konfidensintervall f�r ? d� man
% (a) under en m�nad observerar 16 olyckstillbud
% (b) under tre m�nader observerar 16, 24 respektive 21 olyckstillbud
% Svara med minst tv� decimalers noggrannhet.

%A
mf = sqrt(16);
Il = 16 - 1.96*mf;
Iu = 16 + 1.96*mf;
%B
b = [16 24 21];
s = std(b);
m = mean(b);

il = m - 1.96*(s/sqrt(3))
iu = m + 1.96*(s/sqrt(3))

%%
%Ber�kna v�ntev�rde och varians
% Du g�r 10 m�tningar fr�n en f�rdelning med v�ntev�rde 5 och varians 4.
% F�r summan av dina m�tningar: A) Ange v�ntev�rde, B) Ange varians
% F�r medelv�rdet av dina m�tningar: C) Ange v�ntev�rde, D) Ange varians
% Svara om n�dv�ndigt med minst tv� decimalers noggrannhet.
n = 10;
E = 5;
V = 4;
%A V�ntev�rde
Etot = n*E;
%B Varians
Vtot = n*V;
%C MedelV�nte
Emedel = Etot/n;
%D medel varians
Vmedel = Vtot/n^2;
%%
% Man vill uppskatta andelen studenter med extrakn�ck. 
% Av 117 slumpm�ssigt utvalda studenter sa 50 att de jobbade extra. Ber�kna ett approximativt 90 
% konfidensintervall f�r p=P(en student har extrakn�ck).
% Ange svaret som A; B, d�r A och B motsvarar konfidensintervallets undre, 
% respektive �vre gr�ns. Svara med minst tre decimalers noggrannhet.

%Antar binomianf�rdelat

alpha = 0.10;
[PHAT, PCI] = binofit(50,117, alpha); %Varf�r funkar inte binofit?
