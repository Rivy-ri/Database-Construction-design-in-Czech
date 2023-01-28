--Tvorba indexu nad entitou Zakaznik
Create index Jmeno_a_prijmeni on Zakaznik([Jmeno],[Prijmeni]);

--Tvorba indexu nad Objednavkou
Create index Cislo_objednavky on Objednavka([Cislo_objednavky]);

--Tvorba indexu nad entitou Zbozi
Create index Cely_nazev on Zbozi([Cely_nazev]);
Create index [Kod] on Zbozi([Kod]);