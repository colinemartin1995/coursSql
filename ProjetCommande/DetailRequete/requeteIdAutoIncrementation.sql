CREATE TABLE Categorie (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	nom VARCHAR(50) NOT NULL,

);

CREATE TABLE Produit(
	id  INT NOT NULL IDENTITY PRIMARY KEY,
	nom VARCHAR(50) NOT NULL,
	code CHAR(5) UNIQUE,
	categorie_id INTEGER,
	
	CONSTRAINT produit_categorie_fk
		FOREIGN KEY (categorie_id) 
		REFERENCES Categorie(id)

);



SET IDENTITY_INSERT Categorie ON; /*Permet de donner l'id que l'on souhaite sinon on ne peut pas y toucher*/
INSERT INTO Categorie(id,nom) VALUES(1,'Dessert'); 
INSERT INTO Categorie(id,nom) VALUES(2,'Condiment'); 
INSERT INTO Categorie(id,nom) VALUES(3,'Velociraptor');
SET IDENTITY_INSERT Categorie OFF;

SET IDENTITY_INSERT Produit ON; 
	INSERT INTO Produit (id,nom,code,categorie_id) VALUES(1,'gateau chocolat',12345,1);
	INSERT INTO Produit (id,nom,code,categorie_id) VALUES(2,'Paris Brest',23560,1);
	INSERT INTO Produit (id,nom,code,categorie_id) VALUES(3,'Moutarde',26932,2);
	INSERT INTO Produit (id,nom,code,categorie_id) VALUES(4,'Poivre',25236,2);
	INSERT INTO Produit (id,nom,code,categorie_id) VALUES(5,'Paul',27896,3);
	INSERT INTO Produit (id,nom,code,categorie_id) VALUES(6,'Pierre',27896,3);
SET IDENTITY_INSERT Produit OFF;