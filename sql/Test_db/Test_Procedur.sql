Execute Vypis_polozek_objednavky_podle_cisla[3248];
--Melo by vrati 4 polozky s kody SP-BD-begige2, SP-BD-3grey, Sch-Br-multicolore ,SP-Drevo-cube1

Exec  Vypocet_cenny_objednavky [3248];
--Nastavi/aktualizuje celkovou castku k uhrade na -> 14 634
/*kontrolni vypocet:
SP-BD-begige2 stoji 5099kc a je 2x
SP-BD-3grey stoji 520 a je 3x
Sch-Br-multicolore stoji 1309 a je 2x
SP-Drevo-cube1 stoji 129 aje 2x
vysledek=14 634kc
/*

