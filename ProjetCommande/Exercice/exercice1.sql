/*Ecrire une requete affichant la liste des produits command�s en indiquant pour chacun :
	- le num�ro de la commande
	- le nom complet du client
	- l'adresse de livraison
	- le produit command� (les informations suivantes devront �tre affich�es : cat�gorie, nom et code.)
	- la quantit� command�e
Les commandes compl�tes devront �tre identifiables rapidement dans la liste des r�sultats.

*/


 SELECT 
	Commande.id AS 'Num�ro de la commande',
	CONCAT (client.nom, client.prenom) AS 'Client',
	Commande.adresseLivraison AS 'Adresse de Livraison',
	CONCAT (produit.nom,'(', produit.code, ')') AS 'Produit command�',
	Categorie.nom AS 'Categorie',
	LigneCommande.quantite AS 'Quantit�'

FROM Commande
	INNER JOIN Client ON Commande.client_id = Client.id
	INNER JOIN LigneCommande ON LigneCommande.commande_id = Commande.id
	INNER JOIN Produit ON LigneCommande.produit_id  = Produit.id
	INNER JOIN Categorie ON Produit.categorie_id = Categorie.id
	
WHERE 1 != 0 
ORDER BY Commande.id