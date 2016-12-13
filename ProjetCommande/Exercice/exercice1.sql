/*Ecrire une requete affichant la liste des produits commandés en indiquant pour chacun :
	- le numéro de la commande
	- le nom complet du client
	- l'adresse de livraison
	- le produit commandé (les informations suivantes devront être affichées : catégorie, nom et code.)
	- la quantité commandée
Les commandes complètes devront être identifiables rapidement dans la liste des résultats.

*/


 SELECT 
	Commande.id AS 'Numéro de la commande',
	CONCAT (client.nom, client.prenom) AS 'Client',
	Commande.adresseLivraison AS 'Adresse de Livraison',
	CONCAT (produit.nom,'(', produit.code, ')') AS 'Produit commandé',
	Categorie.nom AS 'Categorie',
	LigneCommande.quantite AS 'Quantité'

FROM Commande
	INNER JOIN Client ON Commande.client_id = Client.id
	INNER JOIN LigneCommande ON LigneCommande.commande_id = Commande.id
	INNER JOIN Produit ON LigneCommande.produit_id  = Produit.id
	INNER JOIN Categorie ON Produit.categorie_id = Categorie.id
	
WHERE 1 != 0 
ORDER BY Commande.id