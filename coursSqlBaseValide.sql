CREATE TABLE Formation (
	nom VARCHAR(40) NOT NULL,
	nbHeureTotale FLOAT(5) NULL,
	id INTEGER NOT NULL UNIQUE,
	PRIMARY KEY (id),

);

CREATE TABLE Promotion (
	nom VARCHAR(40) NOT NULL,
	dateDebut DATE NOT NULL,
	dateFin DATE NOT NULL,
	id INTEGER NOT NULL UNIQUE,
	formation_id INTEGER NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT promotion_formation_fk
		FOREIGN KEY (formation_id)
		REFERENCES Formation(id)
);

CREATE TABLE Eleve (
	nom VARCHAR(40) NOT NULL,
	prenom VARCHAR(40)NOT NULL,
	mail VARCHAR(50) NOT NULL UNIQUE,
	id INTEGER NOT NULL UNIQUE,
	promotion_id INTEGER NOT NULL,
	
	PRIMARY KEY (id),
	CONSTRAINT eleve_promotion_fk
		FOREIGN KEY (promotion_id) -- on indique que la colonne promotion_id de notre table porte la contrainte de clef étrangère
		REFERENCES Promotion (id) -- on indique la table et la colonne cible de notre contraite
);

CREATE TABLE Formateur (
	nom VARCHAR(40)NOT NULL,
	prenom VARCHAR(40) NOT NULL,
	mail VARCHAR(50) NOT NULL UNIQUE,
	telephone CHAR(10) NULL UNIQUE,
	id INTEGER NOT NULL UNIQUE,
	PRIMARY KEY (id)
);

CREATE TABLE Matiere(
	nom VARCHAR(40) NOT NULL,
	id INTEGER NOT NULL UNIQUE,
	PRIMARY KEY (id)
);

CREATE TABLE matiere_formateur(
	matiere_id INTEGER NOT NULL,
	formateur_id INTEGER NOT NULL,
	PRIMARY KEY (matiere_id,formateur_id), -- clef primaire composite car composée de plusieurs colonnes/valeurs --
	CONSTRAINT matiere_formateur_matiere_id_fk
		FOREIGN KEY(matiere_id)
		REFERENCES Matiere(id),
	CONSTRAINT matiere_formateur_formateur_id
		FOREIGN KEY(formateur_id)
		REFERENCES Formateur(id)
);

CREATE TABLE matiere_formation(
	matiere_id INTEGER NOT NULL,
	formation_id INTEGER NOT NULL,
	PRIMARY KEY (matiere_id,formation_id),
	CONSTRAINT matiere_formation_matiere_id_fk
		FOREIGN KEY(matiere_id)
		REFERENCES Matiere(id),
	CONSTRAINT matiere_formation_formateur_id
		FOREIGN KEY(formation_id)
		REFERENCES Formation(id)

);

CREATE TABLE Salle (
	nom VARCHAR(40) NOT NULL UNIQUE,
	capacité INTEGER NOT NULL,
	id INTEGER NOT NULL UNIQUE,
	PRIMARY KEY (id),
	CONSTRAINT salle_unique UNIQUE (nom,capacité)
);

CREATE TABLE Cours ( -- Cours = Session dans le diagramme UML
	dateDebut DATE NOT NULL,
	dateFin DATE NOT NULL,
	id INTEGER NOT NULL UNIQUE,
	salle_id INTEGER NOT NULL,
	formateur_id INTEGER NOT NULL,
	promotion_id INTEGER NOT NULL,
	matiere_id INTEGER NOT NULL,
	PRIMARY KEY (id),
	-- Clef étrangère pour la salle --
	CONSTRAINT cours_salle_fk
		FOREIGN KEY (salle_id)
		REFERENCES Salle(id),
	-- Clef étrangère pour le formateur --
	CONSTRAINT cours_formateur_fk
		FOREIGN KEY (formateur_id)
		REFERENCES Formateur(id),
	-- Clef étrangère pour la promotion --
	CONSTRAINT cours_promotion_fk
		FOREIGN KEY (promotion_id)
		REFERENCES Promotion(id),
	-- Clef étrangère pour la matière --
	CONSTRAINT cours_matiere_fk
		FOREIGN KEY (matiere_id)
		REFERENCES Matiere(id)
	
);

CREATE TABLE Absence(
	eleve_id INTEGER NOT NULL,
	cours_id INTEGER NOT NULL,
	PRIMARY KEY (eleve_id,cours_id),
	CONSTRAINT absence_eleve_id_fk
		FOREIGN KEY (eleve_id)
		REFERENCES Eleve(id),
	CONSTRAINT absence_cours_fk
		FOREIGN KEY (cours_id)
		REFERENCES Cours(id)
);


