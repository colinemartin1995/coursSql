/*Récuperer les noms de la ou des personne(s)
 qui ont commandé plus de 10 exemplaire d'un même produit dans une commande */
 
 
 -- DISTINCT permet de ne pas note deux fois un client si au cours d'une même commande il a commandé 2 fois plus de 10 articles identiques--
SELECT DISTINCT CONCAT(Client.nom ,' ',Client.prenom)
FROM Client
	INNER JOIN Commande ON Commande.client_id = Client.id
	INNER JOIN LigneCommande ON LigneCommande.commande_id = Commande.id
WHERE LigneCommande.quantite > 9 
ORDER BY Client.nom


 
 

 