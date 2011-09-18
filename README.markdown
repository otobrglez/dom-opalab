Eksperiment: Vrednost nepremičnin
=============

Namen eksperimenta je izdelati prototip spletne aplikacije, ki lahko z uporabo
induktivnega učenja, klasifikacije in modelov znanja napove vrednost poljubne nepremičnine.

Podatki
-------

Podatki so pridobljeni s pomočjo "grabljenja" podatkov iz spletnih virov.
Več po postopku je razvidno iz skript v tem [sorodnem projektu](https://github.com/otobrglez/weka_home).

Učenje
------

Osnova aplikacije je [Google Prediction API](http://code.google.com/intl/sl-SI/apis/predict/), ki je bil natreniran z pridobljenimi testnimi podatki. Model je bil zgrajen z slednjimi podatki: Cena, Velikost, Vrsta(Hiša,Stanovanje,Zemljišče) in Lokacijo(Maribor,Ljubljana,Velenje...). Podatki, uporabljeni za treniranje se sicer nahajajo v [Google Storage](http://code.google.com/intl/sl-SI/apis/storage/), vendar so navoljo tudi v [Github projektu weka_home](https://github.com/otobrglez/weka_home/blob/master/gohome.csv).

Primer:

	259740,2886.00,"Zemljišče","LOGATEC"
	278000,1006.00,"Zemljišče","LJUBLJANA"
	1259.785,14821.00,"Zemljišče","LOGATEC"
	149930,1034.00,"Zemljišče","KRANJ"
	54505,991.00,"Zemljišče","PTUJ"
	2001.600,3336.00,"Zemljišče","LJUBLJANA"
	160310,943.00,"Zemljišče","KAMNIK"
	650000,2600.00,"Zemljišče","LJUBLJANA"
	

Avtor
-----

[Oto Brglez](http://opalab.com)