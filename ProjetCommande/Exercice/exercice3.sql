
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

--  Total de produits par Client  -- 
SELECT Client.nom, SUM(quantite)
FROM LigneCommande
	INNER JOIN Commande ON Commande.id  = LigneCommande.commande_id
	INNER JOIN Client ON Commande.client_id = Client.id
GROUP BY Client.nom;

-- nombre de produit différent -- 

SELECT Client.nom, COUNT(quantite)
FROM LigneCommande
	INNER JOIN Commande ON Commande.id  = LigneCommande.commande_id
	INNER JOIN Client ON Commande.client_id = Client.id
GROUP BY Client.nom;

/*SELECT *FROM LigneCommande*/
--Nombre de clients qui ont commandé des produits, par catégorie --

SELECT Categorie.nom, COUNT(client_id) AS 'Nombre de client'
	FROM Categorie
	INNER JOIN Categorie ON Categorie.id = Produit.categorie_id
	INNER JOIN LigneCommande ON LigneCommande.produit_id = Produit.id
	INNER JOIN Commande ON Commande.client_id = Client.id	
GROUP BY Categorie.nom;