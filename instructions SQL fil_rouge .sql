use fil_rouge
go

-- produit commandés--
select p.pro_designation,count (distinct r.pro_reference) as 'nombre de commande' 
from produit p
join renseigner_dans r on p.pro_reference=r.pro_reference
group by p.pro_designation

-- commandes par client--
select *
from commande co
join client cl on cl.cli_numero=co.cli_numero
order by co.com_numero
 
-- commande en cours de livraison -- 
 select*
 from livraison
 where liv_date is not null

 -- chiffre d'affaire généré pour l'ensemble et par fournisseur --
 select f.fou_nom, sum(com_montant) as 'chiffre d''affaires'
 from fournisseurs f
 join catalogue ca on ca.fou_reference=f.fou_reference
 join produit p on p.pro_reference=ca.pro_reference
 join renseigner_dans r on r.pro_reference=p.pro_reference
 join commande c on c.com_numero=r.com_numero
 group by f.fou_nom


 -- répartition du chiffre d'affaire par type de client -- 
  select c.cli_type,sum(com_montant) as 'chiffre d''affaires'
  from client c
  join commande co on co.cli_numero=c.cli_numero
  group by c.cli_type