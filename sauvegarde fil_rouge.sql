use fil_rouge
go

exec sp_addumpdevice 'disk','savFil','C:\Backups\fil_rouge.bak'
 
-- sauvegarde de la base de donnée--
backup database fil_rouge to savFil

use master 
go

-- commande pour liberer la base et passer mode exclusif --
alter database fil_rouge set restricted_user with rollback immediate

-- restauration de la base de donnée avec la sauvegarde--
restore database fil_rouge from savFil with replace


-- commande pour remettre la base mode multi utilisateur --
alter database fil_rouge set multi_user
