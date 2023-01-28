-- Triggert ktery pri pridavani polozek na objednavku aktualizuje jeji celkovou cenu
-- s vyuzitim procedury Vypocet_cenny_objednavky ktera ji pocita


Create Trigger Prepocitej_cenu_after_inser
on [Objednavka/Zbozi]
after insert 
as 
begin 
	Declare @posledni_zaznam NUMERIC(28);
	Declare @max_id int;

	Select @max_id= Max([Objednavka/Zbozi].[ID_Zbozi/objednavka]) From [Objednavka/Zbozi];

	SELECT @posledni_zaznam=[Objednavka/Zbozi].Objednavka_ID_Objednavka
	From [Objednavka/Zbozi] 
	Where [Objednavka/Zbozi].[ID_Zbozi/objednavka]= @max_id;

	Exec Vypocet_cenny_objednavky @posledni_zaznam;
end

--Test triggeru
/*
Insert into [Objednavka/Zbozi] (Objednavka_ID_Objednavka,Zbozi_ID_zbozi,Pocet_objednanych_ks)
values (6,4,2);
*/



--Trigger automaticky po tvorbe nove faktury vytvori k ni nalezitou 
--objednavku  a propoji je spolu
Create Trigger Vytvor_Objednavku_k_nove_fakture
on Faktura
after insert
as 
begin
	BEGIN TRANSACTION;
	Declare @id_Faktury int;
	Declare @id_Prodejny int;

	Select @id_Faktury=MAX(Faktura.ID_Faktura) From Faktura

	Select @id_Prodejny=Prodejna.ID_prodejna From Prodejna
	where Prodejna.ID_prodejna=(
	Select Zamestnanec.Prodejna_ID_prodejna From Zamestnanec
	inner join Faktura on Faktura.Zamestnanec_ID_zamestnanec=Zamestnanec.ID_zamestnanec
	where Faktura.ID_Faktura=@id_Faktury);

	Insert into Objednavka(Cislo_objednavky,Faktura_ID_Faktura,Prodejna_ID_prodejna)
	values (Next value for Cislo_objednavky_generate,@id_Faktury,@id_Prodejny)
	COMMIT TRANSACTION;

end

--test pro trigger
/*
Insert into Faktura(Datum_vystaveni,Datum_splatnosti,Variabilni_symbol,Konstantni_symbol,Zakaznik_ID_zakaznik,Zamestnanec_ID_zamestnanec,Zaplaceno)
values( GETDATE(),'2023-01-8',181435,302, 1,1,0);
*/


