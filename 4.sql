select d.denumire, coalesce(d.total,0) as Cantitate_Dona, coalesce(v.total,0) as Cantitate_Vlad
from
(select produse.id as pid, produse.denumire as denumire, sum(comenzi_dona.cantitate) as total from produse
left outer join comenzi_dona on produse.id = comenzi_dona.id_produs 
group by produse.id order by produse.denumire 
) as d,
(select produse.id as pid, produse.denumire as denumire, sum(comenzi_vlad.cantitate) as total from produse
left outer join comenzi_vlad on produse.id = comenzi_vlad.id_produs 
group by produse.id order by produse.denumire 
) as v
where d.pid = v.pid;

/*
select produse.denumire, sum(comenzi_dona.cantitate)  as Cantitate_Dona  from  produse
left outer join comenzi_dona on produse.id = comenzi_dona.id_produs 
where produse.id = comenzi_dona.id_produs 
group by produse.denumire order by produse.id */
