CREATE TABLE Categorie (
	id INTEGER NOT NULL PRIMARY KEY,
	nom VARCHAR(50) NOT NULL,

);

CREATE TABLE Produit(
	id INTEGER NOT NULL PRIMARY KEY,
	nom VARCHAR(50) NOT NULL,
	code CHAR(5) UNIQUE,
	categorie_id INTEGER,
	
	CONSTRAINT produit_categorie_fk
		FOREIGN KEY (categorie_id) 
		REFERENCES Categorie(id)

);
