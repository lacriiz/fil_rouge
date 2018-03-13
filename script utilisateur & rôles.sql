
				-- Script de creation de la base fil rouge --

create database fil_rouge
go

use fil_rouge
go
 -- creation utilisateur visiteur--
create login visiteur with password ='visiteur'

create user visiteur for login visiteur


grant select on fil_rouge to visiteur
deny delete on fil_rouge to visiteur

--creation utilisateur client--

create login client with password ='client'

create user client for login client

use fil_rouge
-- autorisation de selection sur les tables clients et commande--
grant select on commande to client
grant select on client to client
-- autorisation d'insertion de donnée sur les tables client et commande--
grant insert on commande to client
grant insert on client to client
-- autorisation de mise à jour des tables client et commande--
grant update on commande to client
grant update on client to client

-- creation utilisateur gestion --

create login roug3 with password='gestion'

create user roug3 for login roug3

create role gestion

-- autorisation de selections sur la base --

grant select on catalogue to gestion
grant select on sous_rubrique to gestion
grant select on rubrique to gestion
grant select on client to gestion
grant select on commande to gestion
grant select on commercial to gestion
grant select on concerne to gestion
grant select on facturation to gestion
grant select on fournisseurs to gestion
grant select on livraison to gestion
grant select on passe to gestion
grant select on produit to gestion
grant select on renseigner_dans to gestion 
grant select on soccupe to gestion 
-- autorisation de mise à jour de la base--

grant update on catalogue to gestion
grant update on sous_rubrique to gestion
grant update on rubrique to gestion
grant update on client to gestion
grant update on commande to gestion
grant update on commercial to gestion
grant update on concerne to gestion
grant update on facturation to gestion
grant update on fournisseurs to gestion
grant update on livraison to gestion
grant update on passe to gestion
grant update on produit to gestion
grant update on renseigner_dans to gestion
grant update on soccupe to gestion
-- contrainte suppression sur la base--
 
deny delete on catalogue to gestion
deny delete on sous_rubrique to gestion
deny delete on rubrique to gestion
deny delete on client to gestion
deny delete on commande to gestion
deny delete on commercial to gestion
deny delete on concerne to gestion
deny delete on facturation to gestion
deny delete on fournisseurs to gestion
deny delete on livraison to gestion
deny delete on passe to gestion
deny delete on produit to gestion 
deny delete on renseigner_dans to gestion
deny delete on soccupe to gestion

execute sp_addrolemember'gestion','roug3'

-- creation utilisateur administrateur --

create login admin with password ='admin'

create user laurent for login admin

create role admin 
-- autorisation de selection sur la base --

grant select on catalogue to admin
grant select on sous_rubrique to admin
grant select on rubrique to admin
grant select on client to admin 
grant select on commande to admin 
grant select on commercial to admin 
grant select on concerne to admin
grant select on facturation to admin
grant select on fournisseurs to admin 
grant select on livraison to admin 
grant select on passe to admin 
grant select on produit to admin
grant select on renseigner_dans to admin 
grant select on soccupe to admin 
-- autorisation de mise a jour de la base -- 

grant update on catalogue to admin 
grant update on sous_rubrique to admin
grant update on rubrique to admin
grant update on client to admin
grant update on commande to admin
grant update on commercial to admin
grant update on concerne to admin
grant update on facturation to admin
grant update on fournisseurs to admin
grant update on livraison to admin 
grant update on passe to admin 
grant update on produit to admin
grant update on renseigner_dans to admin
grant update on soccupe to admin 
-- autorisation de suppression de données sur la base --

grant delete on catalogue to admin 
grant delete on sous_rubrique to admin
grant delete on rubrique to admin
grant delete on client to admin 
grant delete on commande to admin 
grant delete on commercial to admin 
grant delete on concerne to admin 
grant delete on facturation to admin 
grant delete on fournisseurs to admin 
grant delete on livraison to admin 
grant delete on passe to admin
grant delete on produit to admin 
grant delete on renseigner_dans to admin 
grant delete on soccupe to admin 

execute sp_addrolemember 'admin','laurent'

-- autorisation d'affichage au public --
grant select on catalogue to public
grant select on sous_rubrique to public
grant select on rubrique to public
grant select on client to public
grant select on commande to public
grant select on facturation to public
grant select on livraison to public 
grant select on passe to public
grant select on produit to public
