select 
	case when 
		(select sum(comenzi_vlad.cantitate) from comenzi_vlad where year(data) = 2021)  >
        (select sum(comenzi_dona.cantitate) from comenzi_dona where year(data) = 2021 ) 
			then "Farmacia Vlad" 
			else case when 
            (select sum(comenzi_vlad.cantitate) from comenzi_vlad where year(data) = 2021)  = 
            (select sum(comenzi_dona.cantitate) from comenzi_dona where year(data) = 2021 ) 
				then "Au comandat la fel de mult"
				else "Farmacia Dona"
                    end  end as Cel_Mai_Mult_Comandat;

