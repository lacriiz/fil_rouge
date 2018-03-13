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


 --- ils manques des requetes -- 
 --- les requetes manquantes : --
 --- CA généré pour l'ensemble et par fournisseur 
 --- repaartition du CA par type de client 

 --- script d'alimentation corrigé
 --- script d'instruction a completer
 ---- la vue est bonne elle rend des valeurs
 --- supprimer la table facturation et la remplacer par les valeurs nouvelles 