//Insérer un champs

//Choix 1 : 
INSERT INTO ma_table(colonne1,colonne3)
VALUES(value1,value3);

//Choix 2 :
INSERT INTO Categorie(id,nom)
VALUES(1,'Dessert'); 

INSERT INTO Categorie(nom,id)
VALUES('Fruit',3)


//Requete pour voir le contenu de la table
SELECT * FROM Categorie


// Violation de la contrainte PRIMARY KEY « PK__Categori__3213E83F2AA93245 » => deja id 1 donc pas possible de créer un champs lapin avec un id 1
INSERT INTO Categorie(id,nom)
VALUES(1,'Lapin');

// Si on ne précise pas les colonnes, les valeurs vont s'ajouter dans l'ordre des colonnes qu'on a créer dans le script
INSERT INTO Categorie VALUES(3,'velociraptor');

INSERT INTO Produit VALUES(1,'gateau chocolat',12345,1);