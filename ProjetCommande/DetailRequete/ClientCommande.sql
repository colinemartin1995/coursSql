CREATE TABLE Client(
	id  INT NOT NULL IDENTITY PRIMARY KEY,
	nom VARCHAR(50) NOT NULL,
	prenom VARCHAR(50) NOT NULL,
	mail VARCHAR(70) UNIQUE NOT NULL
	
);
                 
CREATE TABLE Commande( 
	id  INT NOT NULL IDENTITY PRIMARY KEY,
	adresseLivraison VARCHAR(100) NOT NULL,
	client_id INTEGER NOT NULL,
	CONSTRAINT commande_client_fk
		FOREIGN KEY (client_id) 
		REFERENCES Client(id)
);

CREATE TABLE LigneCommande(
	quantite INTEGER NOT NULL,
	commande_id INTEGER NOT NULL,
	produit_id INTEGER NOT NULL,
	
	CONSTRAINT lignecommande_commande_id_fk
		FOREIGN KEY (commande_id) 
		REFERENCES Commande(id),
	CONSTRAINT lignecommande_produit_id_fk
		FOREIGN KEY (produit_id) 
		REFERENCES Produit(id),
	PRIMARY KEY(commande_id,produit_id)
	
);





