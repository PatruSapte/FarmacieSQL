select count(comenzi_dona.id_comanda) as Numar_Comenzi_August,
	   sum(comenzi_dona.cantitate*produse.pret) as Pret_Total_August,
       avg(comenzi_dona.cantitate*produse.pret) as Valoare_Medie_Comanda 
from comenzi_dona, produse
where comenzi_dona.id_produs = produse.id and month(data) = 8;
