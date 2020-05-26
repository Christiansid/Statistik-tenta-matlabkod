
%%
% I en vindkraftspark står två mindre vindkraftverk.
% De fungerar oberoende av varandra och sannolikheten att de fungerar vid ett visst tillfälle är 24/25, respektive 99/100.
% Beräkna sannolikheten att precis ett av det två kraftverken fungerar.
% Svara med minst tre decimalers noggrannhet.
(24/25)*(1/100)+(1/25)*(99/100);
%%
% Slumpvariabeln X antar värdena 0, 1, 2 eller 3 med sannolikheterna 0.53, 0.06, 0.1 respektive 0.31.
% Beräkna P(X > 1) och ange svaret med minst två decimalers noggrannhet.
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
% Blodsockerhalten brukar mätas två timmar efter intag av glukoslösning. 
% Antag att detta 2-timmars-värde är normalfördelat med förväntat värde 5.42 mmol/l och standardavvikelse 1.23 mmol/l. 
% Nedsatt glukostolerans är inte en sjukdom men innebär en kraftigt ökad risk för diabetes. 
% Nedsatt glukostolerans brukas definieras som blodsockervärden mellan 7.8 och 11.0 mmol/l två timmar efter intag av glukoslösning.
% Beräkna sannolikheten att en slumpmässigt vald person har nedsatt glukostolerans?
% Svara med minst tre decimalers noggrannhet.
mu = 5.42;
std = 1.23;
low=normcdf(7.8,mu,std);
upper=normcdf(11,mu,std);
answ1=upper-low;
%%
% Pers och Påls utgifter (enhet: kr) under en månad kan anses vara oberoende normalfördelade
% slumpvariabler X med väntevärde 8300 och standardavvikelse 20 respektive Y med väntevärde 9400 och standardavvikelse 45.
% Beräkna sannolikheten att deras sammanlagda utgifter överstiger 17795.
% Svara med minst två decimalers noggrannhet.
permu=8300;
perstd=20;
paulmu=9400;
paulstd=45;
totmu = permu+paulmu;
x=17795;
totstd = sqrt(perstd^2 + paulstd^2);
answ2=1-normcdf(x,totmu,totstd);
%%
% Medelvikten i ett stickprov bestående 
% av 9 män var 86.67 kg med standardavvikelse 
% 6.46 kg. Vad är "standard error of the mean",
% d.v.s medelfelet för skattningen av förväntad 
% medelvikt i populationen? Svara med minst två
% decimalers noggrannhet.
men=9;
menmu=86.67;
menstd=6.46;
st_m_err=menstd/sqrt(men);
%%
% De tre observationerna 1.4, 0.85 och 0.58 anses vara hämtade från en
% exponentialfördelning med täthetsfunktion f(x)=lambda*e^{-lambda*x}; x>=0.
% Ange ML-skattningen för parametern \lambda?. Svara med minst tre decimalers noggrannhet.
obsvec = [1.4 0.85 0.58];
n = 3;
ML = n/sum(obsvec);
%%
% För at testa H_0 : mu = 2.8 mot H_1 : mu=/ 2.8 på nivå 5% i
% en N(mu, std) skattas det okända std med
% s = sqrt((1/(N-1))*sum(i->N)(x_i - x_hatt)^2) = 0.51 från 9 oberoende
% mätningar. Nollhypotesen H_0 förkastas om x_hatt < k_1 där x_hatt är
% medelvärdet av de 9 mätningarna. bestäm värdet på k_1 och k_2.
% Svara med två decimaler.
s=0.51;
n = 9;
mu = 2.8;
st_mean_err = s/sqrt(n);
t_value = 2.31;
k_1 = mu - t_value*st_mean_err;
k_2 = mu + t_value*st_mean_err;

%%
% En biltillverkare säger i sin reklam att den genomsnittliga
% bensinförbrukningen för en viss modell är högst \mu=0.7?=0.7 l/mil vid
% blandad körning. En motororganisation misstänker att förbrukningen i
% själva verket är högre och provkör under en längre tid nn slumpmässigt utvalda
% bilar av modellen. Man antar att bränsleförbrukningen är normalfördelad med
% väntevärde \mu? och standardavvikelse 0.20.2 och beslutar sig för att testa hypotesen
% H_0 : mu <= 0.7 mot H_1 : mu > 0.7 på signifikansnivå 0.001. Antag att den sanna bränsleförbrukningen
% i själva verket är 0.9. Hur många bilar ska motororganisationen provköra för att de, med sannolikheten minst
% 0.9, ska upptäcka att biltillverkarens påstående är felaktigt?
% Svara med ett heltal (avrunda uppåt).
mu = 0.7;
std3 = 0.2; 
p = 0.9;
lambda = 3.0902;
n3 = (lambda/mu)^2;
%%
% För en viss sjukdom vet man att sannolikheten att en obehandlad
% patient blir frisk brukar vara 0.62. Man vill undersöka om en viss
% behandling ökar sannolikheten att bli frisk och tänker därför undersöka 25 patienter.
% Man bestämmer sig för att dra slutsatsen att sannolikheten att bli frisk ökar om
% minst 21 av de 25 patienterna blir friska.
% Antag att behandlingen har effekt på sannolikheten att bli frisk är 0.9.
% Hur stor är chansen att man upptäcker att effekten ökar med detta test?
% Svara med minst tre decimalers noggrannhet.
p=0.9;
n=17;
k=21;
binocdf(4,n,0.18)
%%
% För de 18 talparen (x1,y1),...,(x18,y18) ansätter man en enkel linjär
% regressionsmodell: yi = B0 +B1*xi 0 ei, där ei är oberoende och
% normalfördelade. I en analys beräknas följande 95% intervall:
% I_B0 = (-0.28, 0.78), I_B1 = (-2.27, -1.19).
% Avgör om påstående är sanna:
% A: modellen yi = B0 + ei är att föredra
% B: modellen yi = B1*xi + ei är att föredra
% C: Det finns en positiv korrelation mellan x och y
% D: Från den skattade modellen ser vi att en ökning i xx med 10
% enheter innebär att yy minskar i genomsnitt med 17.317.3 enheter.
% Svar: 0, 1, 0, 1
%%
% Antalet julklappar som en slumpmässigt vald person
% ur en viss population får är Poissonfördelat med väntevärde 3.4.
% Beräkna sannolikheten att personen får minst 1 julklapp.
% Svara med minst tre decimalers noggrannhet.
mu = 3.4;
ans = 1-poisscdf(0, 3.4);
%%
% Slumpvariabeln XX är normalfördelad med väntevärde -6.9 och standardavvikelse 2.3.
% A: Beräkna P(X <= -8.602)
% B: Beräkna P(X > -10.189)
% C: Beräkna P(-10.189 < X <= -8.602)
% Svara på formen A; B; C, där A är svaret på första frågan, B är svaret på andra frågan och C är svaret på tredje frågan. Svara med minst två decimalers noggrannhet.
mu = -6.9;
s=2.3;
A = normcdf(-8.602,mu,s);
B = 1-normcdf(-10.189,mu,s);
C = A-(1-B);
%%
% Beräkna P(-1 <= Y <= 2) då Y=2X-2 och X är normalfördelad
% med mu=0.5, std=1.5. Svara med minst två decimalers noggrannhet.
Y = 2*0.5 - 2;
std = 2*1.5
ans = normcdf(-1, Y, std);
ans2 = normcdf(2, Y, std);
ansans = ans2-ans;
%%
% Mätningar på avståndet till en ljusstark stjärna
% beskrivs av en slumpvariabel med väntevärde
% ? och standardavvikelse ?. Man gjorde mätningar med två instrument, I1 och I2 och
% erhöll följande resultat: se matlab fig 1.
% Efteråt insåg man att instrument I2 var felinställd med ett systematisk fel
% ?. Standardavvikelsen för mätningar från detta instrument är fortfarande ?.
% a) Uppskatta det systematiska felet ?. Svara med två decimaler.
% b) Gör en skattning av ? som baseras på mätningar från båda instrumenten.
% Svara med minst två decimalers noggrannhet.
std1 = 0.32;
mu1 = 9.21;
n1 = 8;
std2 = 0.3;
mu2 = 6.47;
n2 = 7;
a = mu2-mu1
b = (std1+std2)/2
%%
%Vi vill jämföra två olika mätmetoder A och B. Låt X vara resultatet av en
% mätning med metod A och att X ? N(?_A,?) 
% och Y en mätning med metod B där Y ? N(?_B,?).
% Se figur 2 för värden.
% Gör ett ensidigt, undre begränsat 99.9% konfidensintervall, för ?_B ? ?_A.
% Svara med intervallets undre gräns och med minst två decimalers noggrannhet.

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
% Willy studerar styrkefunktionen från testet H_0 : ? = 1.1, H_1 : ? < 1.1 
% vilket baseras på 14 normalfördelade mätningar med standardavvikelse 1.
% Testets signifikansnivå var 0.001. Vad är sannolikheten att inte upptäcka att H_0 
% är falsk då ?= 0.3?
% Svara med tre decimaler.
mu = 1.1;
std = 1;
n = 14;
l = 3.0902;
mu1=0.3;
I_low = mu - l*(std/sqrt(n));
1-normcdf(I_low, mu1, std/sqrt(n));
%%
% Antalet olyckstillbud under en månad i en viss korsning anses oberoende och Poissonfördelade med väntevärde ?.
% Gör ett approximativt 95% konfidensintervall för ? då man
% (a) under en månad observerar 16 olyckstillbud
% (b) under tre månader observerar 16, 24 respektive 21 olyckstillbud
% Svara med minst två decimalers noggrannhet.

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
%Beräkna väntevärde och varians
% Du gör 10 mätningar från en fördelning med väntevärde 5 och varians 4.
% För summan av dina mätningar: A) Ange väntevärde, B) Ange varians
% För medelvärdet av dina mätningar: C) Ange väntevärde, D) Ange varians
% Svara om nödvändigt med minst två decimalers noggrannhet.
n = 10;
E = 5;
V = 4;
%A Väntevärde
Etot = n*E;
%B Varians
Vtot = n*V;
%C MedelVänte
Emedel = Etot/n;
%D medel varians
Vmedel = Vtot/n^2;
%%
% Man vill uppskatta andelen studenter med extraknäck. 
% Av 117 slumpmässigt utvalda studenter sa 50 att de jobbade extra. Beräkna ett approximativt 90 
% konfidensintervall för p=P(en student har extraknäck).
% Ange svaret som A; B, där A och B motsvarar konfidensintervallets undre, 
% respektive övre gräns. Svara med minst tre decimalers noggrannhet.

%Antar binomianfördelat

alpha = 0.10;
[PHAT, PCI] = binofit(50,117, alpha); %Varför funkar inte binofit?
