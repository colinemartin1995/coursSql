SET IDENTITY_INSERT Categorie ON;
INSERT INTO Categorie(id,nom) VALUES
(1,'Dessert'),
(2,'Condiment'),
(3,'Fruits'),
(4,'Herbes aromatiques');
SET IDENTITY_INSERT Categorie OFF;


SET IDENTITY_INSERT Produit ON;
INSERT INTO Produit(id,nom,code,categorie_id) VALUES
	(1,'gateau chocolat',12345,1),
	(2,'Paris Brest',23560,1),
	(3,'Moutarde',25432,2),
	(4,'Poivre',25236,2),
	(5,'Sel',25256,2),
	(6,'Poire William',27896,3),
	(7,'Basilic',29863,4);
SET IDENTITY_INSERT Produit OFF;

SET IDENTITY_INSERT Client ON;
INSERT INTO Client (id,nom,prenom,mail) VALUES
	(1,'Martin','Coline','cmartin@gmail.com'),
	(2,'Lethielleux','Franck','flethielleux@laposte.com'),
	(3,'Garel','Thomas','thomasgarel@free.fr');
	
SET IDENTITY_INSERT Client OFF;

SET IDENTITY_INSERT Commande ON;
INSERT INTO Commande(id,adresseLivraison,client_id) VALUES
	(1,'711 rue de la France, 44000 Nantes',1),
	(2,'20 rue du port, 44580 La Baule',2),
	(3,'10 rue de la gare, 56900 Pont Aven',3);
SET IDENTITY_INSERT Commande OFF;

INSERT INTO LigneCommande(quantite,commande_id,produit_id) VALUES
	(3,1,7),
	(2,1,3),
	(1,1,5),
	(1,1,4),
	(1,3,1),
	(1,3,2),
	(3,2,6);
