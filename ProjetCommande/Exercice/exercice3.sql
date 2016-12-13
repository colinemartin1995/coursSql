
-- Compter les informations présentes dans une table -- 
SELECT COUNT(*) FROM Client;
SELECT COUNT(*) FROM ligne_commande;

-- Pour chaque commande connaitre le nombre de ligne -- 
-- Le nombre de ligne par commande -- 
SELECT Commande_id, COUNT(*) 
FROM ligneCommande
GROUP BY commande_id;

-- Nombre de commandes par Client nom du client --

SELECT Client.nom, COUNT(*)
FROM Commande
	INNER JOIN Client ON Client.id= Commande.client_id
GROUP BY Client.nom;

-- Nombre de produits par Client -- 
SELECT Client.nom, SUM(quantite)
FROM LigneCommande
	INNER JOIN Commande ON Commande.client_id = Client.id
	INNER JOIN LigneCommande ON LigneCommande.commande_id = Commande.id
GROUP BY Client.nom;