
use fil_rouge

INSERT INTO rubrique([nom_rubrique]) VALUES('guitares');
INSERT INTO rubrique([nom_rubrique]) VALUES('pianos');
INSERT INTO rubrique([nom_rubrique]) VALUES('equipements');
INSERT INTO rubrique([nom_rubrique]) VALUES('pièces de rechanges');

INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('a corde nylon','guitares');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('folks','guitares');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('electriques','guitares');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('douze cordes','guitares');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('basses','guitares');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('piano a queue','pianos');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('piano droit','pianos');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('pinao quart de queue','pianos');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('piano a demi-queue','pianos');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('hammerfluegel','pianos');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('ampli','equipements');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('pédale d''effet','equipements');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('ampli clavier','equipements');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('pour guitare','pièces de rechanges');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('pour piano','pièces de rechanges');
INSERT INTO sous_rubrique([nom_ss_rubrique],[nom_rubrique]) VALUES('pièces d''occasions','pièces de rechanges');

INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(1,'Ornare Facilisis Eget Company','MULTINATIONALES');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(2,'Iaculis Quis Industries','SA');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(3,'Enim Sed Nulla Company','MULTINATIONALES');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(4,'Lacus Nulla PC','SAS');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(5,'Tincidunt Nibh Phasellus PC','SA');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(6,'Auctor Vitae Aliquet Institute','PME');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(7,'Odio LLP','SARL');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(8,'A Aliquet Incorporated','SARL');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(9,'Mauris Institute','PME');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(10,'Elementum Dui Foundation','SAS');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(11,'In Tincidunt Corp.','SA');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(12,'Semper LLC','PME');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(13,'Justo Faucibus Lectus Industries','PME');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(14,'Vitae Erat Corporation','PME');
INSERT INTO fournisseurs([fou_reference],[fou_nom],[fou_categorie]) VALUES(15,'Dis Company','SAS');



UPDATE [fournisseurs] SET [fou_adresse] = '7859 Non Impasse' WHERE [fou_reference] = 1;
UPDATE [fournisseurs] SET [fou_adresse] = '770 Malesuada Av.' WHERE [fou_reference] = 2;
UPDATE [fournisseurs] SET [fou_adresse] = 'Appartement 672-9487 A Chemin' WHERE [fou_reference] = 3;
UPDATE [fournisseurs] SET [fou_adresse] = '347-2596 Amet Route' WHERE [fou_reference] = 4;
UPDATE [fournisseurs] SET [fou_adresse] = 'Appartement 403-6694 Suspendisse Ave' WHERE [fou_reference] = 5;
UPDATE [fournisseurs] SET [fou_adresse] = '435 Tincidunt Route' WHERE [fou_reference] = 6;
UPDATE [fournisseurs] SET [fou_adresse] = '960-5443 Erat Impasse' WHERE [fou_reference] = 7;
UPDATE [fournisseurs] SET [fou_adresse] = 'Appartement 852-8202 Massa. Rd.' WHERE [fou_reference] = 8;
UPDATE [fournisseurs] SET [fou_adresse] = '1347 Nunc Ave' WHERE [fou_reference] = 9;
UPDATE [fournisseurs] SET [fou_adresse] = '5258 Risus. Ave' WHERE [fou_reference] = 10;
UPDATE [fournisseurs] SET [fou_adresse] = 'CP 127, 7155 Suspendisse Avenue' WHERE [fou_reference] = 11;
UPDATE [fournisseurs] SET [fou_adresse] = 'CP 759, 1994 Vel Route' WHERE [fou_reference] = 12;
UPDATE [fournisseurs] SET [fou_adresse] = '253 Nisi Impasse' WHERE [fou_reference] = 13;
UPDATE [fournisseurs] SET [fou_adresse] = 'CP 466, 7762 Egestas. Av.' WHERE [fou_reference] = 14;
UPDATE [fournisseurs] SET [fou_adresse] = 'Appartement 380-2256 Penatibus Chemin' WHERE [fou_reference] = 15;

INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(1,'samick js 043 d','M-244-P-34','M-869-P-852-Q31','463,17','7');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(2,'samick js 121 md','M-916-P-17','M-669-P-682-Q34','659,81','13');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(3,'samick sig 48','M-687-P-27','M-538-P-858-Q84','833,92','41');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(4,'yamaha b 1 silent neuf expo','M-567-P-93','M-539-P-729-Q35','104,61','41');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(5,'irmler f 160 studio neuf expo','M-344-P-71','M-423-P-711-Q61','936,08','47');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(6,'irmler f 148 studio neuf expo','M-369-P-98','M-372-P-916-Q87','437,81','97');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(7,'wildenheim 112 c neuf expo','M-663-P-35','M-356-P-293-Q39','766,75','53');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(8,'obermann 118 neuf expo','M-972-P-68','M-163-P-215-Q11','413,50','13');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(9,'casio px 870','M-869-P-16','M-727-P-735-Q74','561,54','7');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(10,'Fender ESC105 Educational 4/4 NT','M-857-P-71','M-729-P-571-Q86','844,97','89');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(11,'PRS SE Custom 24 LTD Maple Ed. FR','M-432-P-63','M-593-P-411-Q95','716,57','19');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(12,'Duesenberg Caribou black B-Stock','M-529-P-22','M-636-P-841-Q73','975,77','83');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(13,'Chapman Guitars ML3 Pro Modern Lunar B-Stock','M-646-P-57','M-679-P-128-Q22','319,19','5');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(14,'Chapman Guitars Ghost Fret Black Blood B-Stock','M-144-P-71','M-121-P-446-Q99','556,50','71');
INSERT INTO produit([pro_reference],[pro_designation],[pro_libelle_court],[pro_libelle_long],[pro_prix_ht],[pro_quantit]) VALUES(15,'Harley Benton Custom Line ResoKing B B-Stock','M-658-P-64','M-933-P-265-Q27','390,22','97');

UPDATE [produit] SET [nom_ss_rubrique] ='a corde nylon' where[pro_reference]=1;
UPDATE [produit] SET [nom_ss_rubrique] ='douze cordes 'where[pro_reference]=2;
UPDATE [produit] SET [nom_ss_rubrique] ='basses'where[pro_reference]=3;
UPDATE [produit] SET [nom_ss_rubrique] ='electriques'where[pro_reference]=4;
UPDATE [produit] SET [nom_ss_rubrique] ='electriques'where[pro_reference]=5;
UPDATE [produit] SET [nom_ss_rubrique] ='a corde nylon'where[pro_reference]=6;
UPDATE [produit] SET [nom_ss_rubrique] ='folks'where[pro_reference]=7;
UPDATE [produit] SET [nom_ss_rubrique] ='folks'where[pro_reference]=8;
UPDATE [produit] SET [nom_ss_rubrique] ='basses'where[pro_reference]=9;
UPDATE [produit] SET [nom_ss_rubrique] ='piano a demi-queue'where[pro_reference]=10;
UPDATE [produit] SET [nom_ss_rubrique] ='piano droit'where[pro_reference]=11;
UPDATE [produit] SET [nom_ss_rubrique] ='piano droit'where[pro_reference]=12;
UPDATE [produit] SET [nom_ss_rubrique] ='piano a queue'where[pro_reference]=13;
UPDATE [produit] SET [nom_ss_rubrique] ='piano a demi-queue'where[pro_reference]=14;
UPDATE [produit] SET [nom_ss_rubrique] ='hammerfluegel'where[pro_reference]=15;

set identity_insert facturation ON
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(1,'07/09/18','impayé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(2,'29/08/17','payé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(3,'21/01/17','impayé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(4,'19/11/17','impayé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(5,'26/08/18','payé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(6,'22/02/18','impayé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(7,'30/10/16','impayé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(8,'12/11/16','impayé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(9,'06/01/17','impayé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(10,'09/03/18','payé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(11,'04/11/17','impayé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(12,'30/07/18','impayé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(13,'13/04/18','payé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(14,'21/01/18','impayé');
INSERT INTO facturation([fac_numero],[fac_date],[statut_paiement]) VALUES(15,'13/07/18','payé');
set identity_insert facturation off
set identity_insert commande on
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(1,'273,33€',28,'07/07/2017',1,'7965 Non, Impasse','CP 216, 194 Elit. Chemin',6,9);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(2,'067,54€',251,'16/02/2018',9,'672-6354 In, Avenue','9708 Interdum Impasse',3,3);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(3,'986,68€',220,'14/07/2017',13,'786-9381 Sed Impasse','CP 932, 3420 Non, Chemin',1,12);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(4,'917,16€',226,'17/06/2018',4,'CP 910, 4959 Turpis. Av.','CP 446, 1994 Odio. Rue',13,4);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(5,'344,38€',583,'15/08/2017',15,'Appartement 107-1407 Libero Ave','4939 Tellus Ave',8,1);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(6,'740,98€',89,'02/04/2017',11,'757-8445 Aliquet Route','919-7563 Adipiscing. Av.',7,4);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(7,'390,81€',484,'30/11/2016',2,'524-5025 Sed, Ave','Appartement 879-5502 In Impasse',9,6);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(8,'382,43€',585,'01/05/2018',8,'Appartement 171-1254 Purus Av.','6070 Consequat Av.',10,5);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(9,'499,30€',410,'18/10/2017',7,'828-7503 Imperdiet Av.','Appartement 932-6522 Turpis Av.',8,15);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(10,'836,31€',514,'20/04/2018',14,'631-2230 Pede, Rd.','554-4445 Adipiscing Rd.',11,6);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(11,'738,69€',172,'21/08/2017',6,'1249 Pellentesque Avenue','533-155 Magna. Avenue',2,14);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(12,'759,74€',411,'25/08/2017',12,'589-7917 Sed Chemin','1396 Dignissim Impasse',14,6);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(13,'761,04€',236,'09/11/2016',13,'Appartement 236-8518 Vestibulum Chemin','195-7135 Neque. Avenue',3,2);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(14,'968,29€',340,'08/03/2018',10,'503-5235 Cursus Route','4776 At, Av.',2,2);
INSERT INTO commande([com_numero],[com_total],[com_quantit],[com_date],[app_remise],[liv_adresse],[fac_adresse],[cli_numero],[fac_numero]) VALUES(15,'681,52€',166,'22/10/2018',5,'CP 213, 8410 Et Ave','CP 556, 8009 Iaculis Avenue',5,13);
set identity_insert commande off
UPDATE [commande] SET [com_montant] = '177,135' WHERE [com_numero] = 1;
UPDATE [commande] SET [com_montant] = '126,681' WHERE [com_numero] = 2;
UPDATE [commande] SET [com_montant] = '192,789' WHERE [com_numero] = 3;
UPDATE [commande] SET [com_montant] = '177,831' WHERE [com_numero] = 4;
UPDATE [commande] SET [com_montant] = '124,911' WHERE [com_numero] = 5;
UPDATE [commande] SET [com_montant] = '190,566' WHERE [com_numero] = 6;
UPDATE [commande] SET [com_montant] = '143,838' WHERE [com_numero] = 7;
UPDATE [commande] SET [com_montant] = '185,601' WHERE [com_numero] = 8;
UPDATE [commande] SET [com_montant] = '132,925' WHERE [com_numero] = 9;
UPDATE [commande] SET [com_montant] = '191,323' WHERE [com_numero] = 10;
UPDATE [commande] SET [com_montant] = '154,734' WHERE [com_numero] = 11;
UPDATE [commande] SET [com_montant] = '161,412' WHERE [com_numero] = 12;
UPDATE [commande] SET [com_montant] = '139,178' WHERE [com_numero] = 13;
UPDATE [commande] SET [com_montant] = '132,475' WHERE [com_numero] = 14;
UPDATE [commande] SET [com_montant] = '131,793' WHERE [com_numero] = 15;

set identity_insert client on
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(1,'Myra Franklin','Appartement 779-3881 Est Chemin','03 74 89 83 70','particulier',852806837);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(2,'Victor Serrano','Appartement 662-4940 Duis Chemin','07 05 65 19 45','particulier',820443699);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(3,'Gannon Snow','3726 Nisl. Impasse','09 62 33 07 86','entreprise',878435894);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(4,'Driscoll Elliott','CP 495, 6847 Nullam Rd.','03 47 02 25 77','entreprise',860129672);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(5,'Illana Foster','Appartement 615-178 Leo. Avenue','06 96 57 27 93','entreprise',887729590);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(6,'Maggy Heath','386-2588 Mus. Chemin','07 91 41 94 26','entreprise',894862040);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(7,'Hedley Allison','Appartement 979-9904 Ad Av.','06 99 06 61 74','entreprise',838190086);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(8,'Avye Dyer','Appartement 523-8800 In Chemin','05 64 05 61 58','Particulier',841507627);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(9,'Nichole Dunlap','182 Fusce Rd.','09 08 95 96 82','entreprise',809287305);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(10,'Skyler Booth','349-1530 Etiam Route','05 95 19 04 92','entreprise',822477533);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(11,'Garrett Frazier','304-126 Nam Ave','04 16 98 61 31','entreprise',812559486);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(12,'Tanek Holden','Appartement 791-8588 Ac Chemin','07 12 37 45 30','entreprise',820959804);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(13,'Dennis Shannon','1717 Morbi Av.','08 20 18 43 49','Particulier',870586119);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(14,'Mia Nolan','CP 813, 4174 Mus. Avenue','09 19 40 82 87','Particulier',813662436);
INSERT INTO client([cli_numero],[cli_nom],[cli_adresse],[cli_contact],[cli_type],[cli_reference]) VALUES(15,'Colin Mclaughlin','Appartement 503-9182 Nullam Rue','07 81 70 90 16','entreprise',854203542);
set identity_insert client off







INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(1,'Lucas','CP 422, 6780 Sagittis Rue');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(2,'Leslie','5813 Mauris Route');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(3,'Joy','CP 628, 3038 Lectus Impasse');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(4,'Selma','Appartement 371-3106 Cursus. Rd.');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(5,'Nita','1600 Odio Rue');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(6,'Caesar','Appartement 803-9755 Quisque Chemin');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(7,'Allen','6457 Dictum. Avenue');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(8,'Odysseus','CP 769, 9856 Turpis Chemin');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(9,'Troy','513-3780 Vel Rd.');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(10,'Wyoming','584 Lacus Impasse');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(11,'Kaseem','Appartement 513-2380 Nec Av.');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(12,'Anastasia','Appartement 711-1077 Senectus Chemin');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(13,'Alfonso','CP 827, 4348 Adipiscing Av.');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(14,'Ivor','CP 146, 5742 Commodo Av.');
INSERT INTO commercial([com_id],[com_nom],[com_adresse]) VALUES(15,'Adara','1507 Congue, Impasse');


INSERT INTO livraison([liv_numero],[liv_date]) VALUES(1,'27/02/17');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(2,'22/04/18');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(3,'20/03/17');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(4,'08/03/17');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(5,'15/01/17');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(6,'15/11/16');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(7,'15/01/17');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(8,'09/10/18');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(9,'26/07/18');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(10,'05/10/18');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(11,'17/06/18');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(12,'01/04/18');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(13,'07/03/17');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(14,'05/10/18');
INSERT INTO livraison([liv_numero],[liv_date]) VALUES(15,'17/07/17');

UPDATE [livraison] SET [com_numero] = 2 WHERE [liv_numero] = 1;
UPDATE [livraison] SET [com_numero] = 6 WHERE [liv_numero] = 2;
UPDATE [livraison] SET [com_numero] = 7 WHERE [liv_numero] = 3;
UPDATE [livraison] SET [com_numero] = 3 WHERE [liv_numero] = 4;
UPDATE [livraison] SET [com_numero] = 1 WHERE [liv_numero] = 5;
UPDATE [livraison] SET [com_numero] = 4 WHERE [liv_numero] = 6;
UPDATE [livraison] SET [com_numero] = 9 WHERE [liv_numero] = 7;
UPDATE [livraison] SET [com_numero] = 9 WHERE [liv_numero] = 8;
UPDATE [livraison] SET [com_numero] = 1 WHERE [liv_numero] = 9;
UPDATE [livraison] SET [com_numero] = 2 WHERE [liv_numero] = 10;
UPDATE [livraison] SET [com_numero] = 4 WHERE [liv_numero] = 11;
UPDATE [livraison] SET [com_numero] = 1 WHERE [liv_numero] = 12;
UPDATE [livraison] SET [com_numero] = 1 WHERE [liv_numero] = 13;
UPDATE [livraison] SET [com_numero] = 6 WHERE [liv_numero] = 14;
UPDATE [livraison] SET [com_numero] = 2 WHERE [liv_numero] = 15;

INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(11,11,13);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(16,7,6);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(13,1,6);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(3,11,4);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(4,10,7);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(5,11,6);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(19,5,13);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(11,12,11);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(10,3,3);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(3,13,3);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(1,14,14);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(20,3,2);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(1,5,6);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(13,1,15);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(5,12,13);
INSERT INTO renseigner_dans([quantit_command],[pro_reference],[com_numero]) VALUES(9,11,14);


INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(16,5,5);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(5,8,15);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(1,15,12);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(12,3,13);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(2,11,6);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(1,15,9);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(3,5,8);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(3,12,11);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(4,9,15);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(15,5,3);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(18,6,10);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(12,9,4);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(14,2,9);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(9,15,6);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(4,6,10);
INSERT INTO concerne([quantit_livr],[pro_reference],[liv_numero]) VALUES(12,14,3);



INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(7,12);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(15,12);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(8,5);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(9,6);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(8,3);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(15,13);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(5,9);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(7,4);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(2,5);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(13,5);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(1,5);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(13,8);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(5,3);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(9,8);
INSERT INTO catalogue([fou_reference],[pro_reference]) VALUES(9,11);


INSERT INTO soccupe([com_id],[cli_numero]) VALUES(11,5);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(5,3);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(12,4);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(3,12);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(5,12);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(15,10);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(5,9);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(10,1);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(14,6);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(7,11);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(7,10);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(4,10);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(5,10);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(3,15);
INSERT INTO soccupe([com_id],[cli_numero]) VALUES(6,12);

set identity_insert sous_rubrique on




