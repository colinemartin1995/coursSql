CREATE TABLE Categorie (
	id INTEGER NOT NULL UNIQUE,
	nom VARCHAR(40) NOT NULL,
	CONSTRAINT categorie_pk
		PRIMARY KEY (id)
);

CREATE TABLE Produit(
	id INTEGER NOT NULL UNIQUE,
	nom VARCHAR(40) NOT NULL,
	code  INTEGER NOT NULL UNIQUE,
	categorie_id INTEGER, //je ne peux pas avoir de produit sans categorie si pas not null je ne serai pas obligé de lui donner une categorie
	PRIMARY KEY (id),
	
	CONSTRAINT produit_categorie_fk
		FOREIGN KEY (categorie_id) 
		REFERENCES Categorie(id)

);


