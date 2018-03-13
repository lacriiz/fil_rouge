use fil_rouge
go

--drop view produit_fourniss

create view produit_fourniss
as 
select p.pro_reference,p.pro_designation,p.nom_ss_rubrique,p.pro_libelle_court,p.pro_libelle_long,f.fou_nom,f.fou_adresse,f.fou_reference,f.fou_categorie
from produit p
join catalogue c on p.pro_reference=c.pro_reference
join fournisseurs f on f.fou_reference=c.fou_reference
go

select*
from produit_fourniss