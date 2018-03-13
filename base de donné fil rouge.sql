

			-- creation de la base de données fil rouge --

create database fil_rouge



create table facturation(
fac_numero INTEGER NOT NULL IDENTITY PRIMARY KEY,
fac_date DATE,
statut_paiement VARCHAR(50),
)


create table client(
cli_numero INT NOT NULL IDENTITY PRIMARY KEY,
cli_nom VARCHAR (50),
cli_adresse VARCHAR (50),
cli_contact VARCHAR (50),
cli_type VARCHAR (50),
cli_reference VARCHAR (50),
)


create table commande(
com_numero INTEGER NOT NULL IDENTITY PRIMARY KEY,
com_total VARCHAR (50),
com_quantit INTEGER NOT NULL,
com_date DATE,
app_remise INTEGER NOT NULL,
liv_adresse VARCHAR (50),
fac_adresse VARCHAR (50),
com_montant MONEY,
cli_numero INTEGER NOT NULL REFERENCES client(cli_numero),
fac_numero INTEGER NOT NULL REFERENCES facturation(fac_numero),
)


create table commercial(
com_id VARCHAR (50) NOT NULL PRIMARY KEY,
com_nom VARCHAR (50),
com_adresse VARCHAR (50),
)


create table soccupe(
com_id VARCHAR (50) REFERENCES commercial(com_id),
cli_numero INTEGER NOT NULL REFERENCES client(cli_numero),
PRIMARY KEY (com_id,cli_numero),
)


create table rubrique(
nom_rubrique VARCHAR (50) PRIMARY KEY,
)


create table sous_rubrique(
nom_ss_rubrique VARCHAR(50) NOT NULL PRIMARY KEY,
nom_rubrique VARCHAR (50) REFERENCES rubrique(nom_rubrique),
)


create table produit(
pro_reference VARCHAR (50) PRIMARY KEY,
pro_designation VARCHAR (50),
pro_libelle_court VARCHAR(50),
pro_libelle_long VARCHAR (50),
pro_prix_ht MONEY,
pro_quantit INT NOT NULL,
nom_ss_rubrique VARCHAR (50) REFERENCES sous_rubrique(nom_ss_rubrique),
)


create table renseigner_dans(
quantit_command INT,
pro_reference VARCHAR (50) REFERENCES produit(pro_reference),
com_numero INTEGER NOT NULL REFERENCES commande(com_numero),
PRIMARY KEY (pro_reference,com_numero),
)


create table livraison(
liv_numero VARCHAR (50) PRIMARY KEY,
liv_date DATE,
com_numero INT REFERENCES commande(com_numero),
)


create table fournisseurs(
fou_reference VARCHAR (50) PRIMARY KEY,
fou_nom VARCHAR (50),
fou_adresse VARCHAR (50),
fou_categorie VARCHAR (50),
)


create table  catalogue(
fou_reference VARCHAR (50) REFERENCES fournisseurs(fou_reference),
pro_reference VARCHAR (50) REFERENCES produit(pro_reference),
PRIMARY KEY (fou_reference,pro_reference),
)


create table concerne(
quantit_livr INTEGER NOT NULL,
pro_reference VARCHAR (50) REFERENCES produit(pro_reference),
liv_numero VARCHAR (50) REFERENCES livraison(liv_numero),
PRIMARY KEY (pro_reference,liv_numero),
)


