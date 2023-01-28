--Tvorba view ktere zobrazi pocet zamestnancu na pobocce/prodejne

/*
Create view Pocet_zamestnancu_na_Prodejne as
	Select count(Zamestnanec.Jmeno) Pocet_zamestnancu,Prodejna.Kod_prodejny
		From Zamestnanec 
			inner join Prodejna
				on Prodejna.ID_prodejna=Zamestnanec.Prodejna_ID_prodejna group by Prodejna.Kod_prodejny;
*/

--Tvorba view ktere zobrazi kodo dodava jake zbozi a kontakt na nej a pocet ks ktery je na sklade

/*
Create view Zasoby_na_sklade  as 
	Select Zbozi.Cely_nazev produkt, Zbozi.Kod kod_produktu,Zbozi.Pocet_ks_na_sklade,Zbozi.Merna_jednotka, Vyrobce.Nazev dodavatel, Vyrobce.[E-mail] kontakt_na_dodavatele
		From Zbozi 
			inner join Vyrobce
				on Vyrobce.ID_vyrobce=Zbozi.Vyrobce_ID_vyrobce
*/

--Tvorba view Polozky_Objednavky ktera resi vypis vazby M:N

/*
Create view Polozky_Objednavky as
	Select Objednavka.Cislo_objednavky, Zbozi.Kod,Zbozi.Cely_nazev, [Objednavka/Zbozi].Pocet_objednanych_ks, Zbozi.Merna_jednotka
		From [Objednavka/Zbozi]
		inner join Objednavka
			on Objednavka.ID_Objednavka=[Objednavka/Zbozi].Objednavka_ID_Objednavka
		inner join Zbozi 
			on Zbozi.ID_zbozi=[Objednavka/Zbozi].Zbozi_ID_zbozi
*/

--Tvorba view Vypis_Faktur_a_Zakazniku
/*
Create view Vypis_Faktur_a_Zakazniku as 
	Select Zakaznik.Jmeno+' '+Zakaznik.Prijmeni as [jmeno zakaznika],
			Objednavka.Cislo_objednavky [cislo objednavky],
			Faktura.Datum_vystaveni,
			Faktura.Datum_splatnosti,
			Objednavka.[Celkova_castka_k_zaplaceni],
			Faktura.Zaplaceno [stav platby],
			Zamestnanec.Jmeno+' '+Zamestnanec.Prijmeni as [vystavil zamestnanec]
				From Faktura
				inner join Zamestnanec on
					Zamestnanec.ID_zamestnanec=Faktura.Zamestnanec_ID_zamestnanec
				inner join Zakaznik on
					Zakaznik.ID_zakaznik=Faktura.Zakaznik_ID_zakaznik
				inner join Objednavka on
					Objednavka.Faktura_ID_Faktura=Faktura.ID_Faktura
*/