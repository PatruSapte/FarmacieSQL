select count(comenzi_vlad.id_comanda) as Numar_Comenzi_2021 from comenzi_vlad
inner join prod_cat on comenzi_vlad.id_produs = prod_cat.id_prod
where prod_cat.id_cat = 4 and year(data) = 2021; 