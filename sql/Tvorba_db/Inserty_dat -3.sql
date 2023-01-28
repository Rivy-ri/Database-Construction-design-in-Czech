
--Inserty Zakaznik
insert into Zakaznik (Jmeno, Prijmeni, [E-mail], Telefon) values ('Sheila', 'Chese', 'schese0@hostgator.com', '7706713741');
insert into Zakaznik (Jmeno, Prijmeni, [E-mail], Telefon) values ('Octavius', 'Kohlerman', 'okohlerman1@themeforest.net', '3963046682');
insert into Zakaznik (Jmeno, Prijmeni, [E-mail], Telefon) values ('Torre', 'Marchand', 'tmarchand2@shareasale.com', '8026458536');
insert into Zakaznik (Jmeno, Prijmeni, [E-mail], Telefon) values ('Alaster', 'Whitecross', 'awhitecross3@disqus.com', '3206529455');
insert into Zakaznik (Jmeno, Prijmeni, [E-mail], Telefon) values ('Zack', 'Frisby', 'zfrisby4@cpanel.net', '1416545779');


--Inserty Vyrobce
insert into Vyrobce (Nazev, Zkratka, [E-mail]) values ('Stracke-Purdy', ' Stracke', 'grankcom0@oracle.com');
insert into Vyrobce (Nazev, Zkratka, [E-mail]) values ('Graham-Graham', 'Graham', 'gschrieves1@narod.ru');
insert into Vyrobce (Nazev, Zkratka, [E-mail]) values ('Schiller Inc', 'Schiller', 'mklesse2@infoseek.co.jp');

--Inserty Zbozi
insert into Zbozi (Cely_nazev,Kod,Cena,Pocet_ks_na_sklade,Merna_jednotka,Vyrobce_ID_vyrobce) values('Kamenny obklad Schiller Bridlice multicolor','Sch-Br-multicolore',1309,56,'baleni',3);
insert into Zbozi (Cely_nazev,Kod,Cena,Pocet_ks_na_sklade,Merna_jednotka,Vyrobce_ID_vyrobce) values('Schiller Silver premium stone neplneny bubnovany','Sch-PStone-silver',1900,20,'baleni',3);
insert into Zbozi (Cely_nazev,Kod,Cena,Pocet_ks_na_sklade,Merna_jednotka,Vyrobce_ID_vyrobce) values('Kamenny obklad Schiller Mramor cerny','Sch-Mr-cerny',963,86,'baleni',3);

insert into Zbozi (Cely_nazev,Kod,Cena,Pocet_ks_na_sklade,Merna_jednotka,Vyrobce_ID_vyrobce) values('Sadrovy obklad Graham-Graham Colorador','GG-Sadra-Colorado',109,56,'m2',2);
insert into Zbozi (Cely_nazev,Kod,Cena,Pocet_ks_na_sklade,Merna_jednotka,Vyrobce_ID_vyrobce) values('Sadrovy obklad Graham-Graham VIGO 1','GG-Sadra-VIGO1',1335,56,'m2',2);

insert into Zbozi (Cely_nazev,Kod,Cena,Pocet_ks_na_sklade,Merna_jednotka,Vyrobce_ID_vyrobce) values('Betonovy obklad Stracke-Stegu Timber 3 grey','SP-BD-3grey',520,888,'baleni',1);
insert into Zbozi (Cely_nazev,Kod,Cena,Pocet_ks_na_sklade,Merna_jednotka,Vyrobce_ID_vyrobce) values('Dreveny obklad Stracke WOOD COLLECTION CUBE 1','SP-Drevo-cube1',129,1002,'ks',1);
insert into Zbozi (Cely_nazev,Kod,Cena,Pocet_ks_na_sklade,Merna_jednotka,Vyrobce_ID_vyrobce) values('Dreveny obklad Wood collection PURE','SP-Drevo-pure',593,12000,'ks',1);
insert into Zbozi (Cely_nazev,Kod,Cena,Pocet_ks_na_sklade,Merna_jednotka,Vyrobce_ID_vyrobce) values('Betonovy obklad Stegu Timber 2 beige','SP-BD-begige2',5099,24,'baleni',1);

--Inserty Prodejna
insert into Prodejna(Adresa,Kod_prodejny) values('Ceskobrodská 7/34, 190 00 Praha 9-Hrdlorezy','P9-Hrdlo');
insert into Prodejna(Adresa,Kod_prodejny) values('Musilova 407, 614 00 Brno-sever-Husovice','B-Husovice');

--Inserty Zamestanec
insert into Zamestnanec (Jmeno, Prijmeni,[Prodejna_ID_prodejna]) values ('Hilliard', 'Binnell', 2);
insert into Zamestnanec (Jmeno, Prijmeni,[Prodejna_ID_prodejna]) values ('Sam', 'Paradine', 1);
insert into Zamestnanec (Jmeno, Prijmeni,[Prodejna_ID_prodejna]) values ('Yvon', 'State', 1);
insert into Zamestnanec (Jmeno, Prijmeni,[Prodejna_ID_prodejna]) values ('Flossie', 'Soitoux', 2);
insert into Zamestnanec (Jmeno, Prijmeni,[Prodejna_ID_prodejna]) values ('Emmit', 'Hlavac', 2);

--Inserty Faktura
insert into Faktura ([Datum_vystaveni], [Datum_splatnosti], [Variabilni_symbol],  [Konstantni_symbol], [Zaplaceno],Zakaznik_ID_zakaznik,Zamestnanec_ID_zamestnanec) values ('2022-01-04', '2022-01-15', 181435, 0302, 1,1,1);
insert into Faktura ([Datum_vystaveni], [Datum_splatnosti], [Variabilni_symbol], [Konstantni_symbol], [Zaplaceno],Zakaznik_ID_zakaznik,Zamestnanec_ID_zamestnanec) values ('2022-01-08', '2022-01-19', 394226,0304, 0,2,5);
insert into Faktura ([Datum_vystaveni], [Datum_splatnosti], [Variabilni_symbol], [Konstantni_symbol], [Zaplaceno],Zakaznik_ID_zakaznik,Zamestnanec_ID_zamestnanec) values ('2022-01-24', '2022-02-02', 226396,0306, 1,3,2);
insert into Faktura ([Datum_vystaveni], [Datum_splatnosti], [Variabilni_symbol], [Konstantni_symbol], [Zaplaceno],Zakaznik_ID_zakaznik,Zamestnanec_ID_zamestnanec) values ('2022-02-06', '2022-02-10', 432296,0302, 1,4,2);
insert into Faktura ([Datum_vystaveni], [Datum_splatnosti], [Variabilni_symbol], [Konstantni_symbol], [Zaplaceno],Zakaznik_ID_zakaznik,Zamestnanec_ID_zamestnanec) values ('2022-02-10', '2022-02-20', 359018,0306, 1,5,1);
insert into Faktura ([Datum_vystaveni], [Datum_splatnosti], [Variabilni_symbol], [Konstantni_symbol], [Zaplaceno],Zakaznik_ID_zakaznik,Zamestnanec_ID_zamestnanec) values ('2022-01-07', '2022-01-14', 803744,0302, 1,5,2);

--Inserty Objednavka
--poz. insertuju bez ceny protoze celkovou cenu pocita procedura s triggrem
insert into Objednavka ([Cislo_objednavky], Faktura_ID_Faktura, [Prodejna_ID_prodejna]) values (4008, 1, 2);
insert into Objednavka ([Cislo_objednavky], Faktura_ID_Faktura, [Prodejna_ID_prodejna]) values (4798, 2, 2);
insert into Objednavka ([Cislo_objednavky], Faktura_ID_Faktura, [Prodejna_ID_prodejna]) values (2327, 3, 2);
insert into Objednavka ([Cislo_objednavky], Faktura_ID_Faktura, [Prodejna_ID_prodejna]) values (3974, 4, 2);
insert into Objednavka ([Cislo_objednavky], Faktura_ID_Faktura, [Prodejna_ID_prodejna]) values (5460, 5, 2);
insert into Objednavka ([Cislo_objednavky], Faktura_ID_Faktura, [Prodejna_ID_prodejna]) values (3248, 6, 1);

--Inserty Objednavka/Zbozi
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (9, 6,2);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (6, 3,1);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (7, 2,3);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (8, 3,5);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (4, 4,1);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (3, 1,3);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (2, 5,1);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (6, 4,2);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (5, 1,2);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (6, 6,3);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (1, 6,2);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (8, 4,4);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (1, 3,3);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (7, 6,2);
insert into [dbo].[Objednavka/Zbozi] ([Zbozi_ID_zbozi], [Objednavka_ID_Objednavka],Pocet_objednanych_ks) values (6, 2,1);

