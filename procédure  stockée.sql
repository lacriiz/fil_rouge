use fil_rouge
go

create proc filrouge
@nonsoldée VARCHAR(50)
as
 select*
 from livraison
 where liv_date is not null AND liv_date=@nonsoldée

create proc delaimoyenlivr
@datedecommande DATE,
@datedelivraison DATE
as 
select avg( DATEDIFF (day, com_date,liv_date)) as  [délai moyen de livraison en jours]
from commande c
join livraison l on l.com_numero=c.com_numero
where com_date=@datedecommande AND liv_date=@datedelivraison

exec delaimoyenlivr '2017-07-07','2018-04-01'