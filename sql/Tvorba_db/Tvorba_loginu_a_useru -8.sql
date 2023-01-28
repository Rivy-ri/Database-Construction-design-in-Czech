
--Tvorba loginu
Create Login Vydejce
with password='123';

Create Login Prodejce
with  password='123';

Create Login Majitel 
with password='123';

--tvorba useru pro loginy
Create user vydejce for Login Vydejce;
Create user prodejce for Login Prodejce;
Create user majitel for Login Majitel;

--prirazeni prav
Exec sp_addrolemember 'db_datareader','vydejce';

Exec sp_addrolemember 'db_datawriter','prodejce';
Exec sp_addrolemember 'db_datareader','prodejce';

Exec sp_addrolemember 'db_owner','majitel';