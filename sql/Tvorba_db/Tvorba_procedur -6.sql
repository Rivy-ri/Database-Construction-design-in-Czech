Create Procedure Vypis_polozek_objednavky_podle_cisla
@Cislo_objenavky numeric(28)
AS
Select 
	Polozky_Objednavky.Kod [Kod polozky],
	Polozky_Objednavky.Cely_nazev [polozka],
	Cast(Polozky_Objednavky.Pocet_objednanych_ks as varchar)+ ' '+Polozky_Objednavky.Merna_jednotka [pocet] ,
	Celkova_castka_k_zaplaceni [Celkova cena]
From Objednavka 
	inner join Polozky_Objednavky
		on Objednavka.Cislo_objednavky=Polozky_Objednavky.cislo_objednavky
where Objednavka.Cislo_objednavky=@Cislo_objenavky;
	

CREATE PROCEDURE Vypocet_cenny_objednavky
 @Cislo_objenavky int 
AS 
declare @Castka int;
BEGIN
  SELECT @Castka = SUM(Celkova_cena_polozek)
  FROM
  (
    SELECT SUM(Zbozi.Cena*Polozky_Objednavky.Pocet_objednanych_ks) AS Celkova_cena_polozek
    FROM Polozky_Objednavky 
      INNER JOIN Zbozi 
        ON Zbozi.Kod=Polozky_Objednavky.Kod
    WHERE Polozky_Objednavky.Cislo_objednavky=@Cislo_objenavky
    GROUP BY Polozky_Objednavky.Kod
  ) AS Celkova_cena;
Update Objednavka 
set Celkova_castka_k_zaplaceni=@Castka 
where Cislo_objednavky=@Cislo_objenavky; 
END











