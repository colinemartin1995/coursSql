CREATE TABLE Eleve (
	nom VARCHAR(40) NOT NULL,
	prenom VARCHAR(40)NOT NULL,
	mail VARCHAR(50) NOT NULL UNIQUE,
	id INTEGER NOT NULL UNIQUE,
	PRIMARY KEY (id)
);

CREATE TABLE Formateur (
	nom VARCHAR(40)NOT NULL,
	prenom VARCHAR(40) NOT NULL,
	mail VARCHAR(50) NOT NULL UNIQUE,
	telephone CHAR(10) NULL UNIQUE,
	id INTEGER NOT NULL UNIQUE,
	PRIMARY KEY (id)
);

CREATE TABLE Promotion (
	nom VARCHAR(40) NOT NULL,
	dateDebut DATE NOT NULL,
	dateFin DATE NOT NULL,
	id INTEGER NOT NULL UNIQUE,
	PRIMARY KEY (id)
);

CREATE TABLE Formation (
	nom VARCHAR(40) NOT NULL,
	nbHeureTotale FLOAT(5) NULL,
	id INTEGER NOT NULL UNIQUE,
	PRIMARY KEY (id)
);

CREATE TABLE Matiere(
	nom VARCHAR(40) NOT NULL,
	id INTEGER NOT NULL UNIQUE,
	PRIMARY KEY (id)
);

CREATE TABLE SALLE (
	nom VARCHAR(40) NOT NULL UNIQUE,
	capacité INTEGER NOT NULL,
	id INTEGER NOT NULL UNIQUE,
	PRIMARY KEY (id),
	CONSTRAINT salle_unique UNIQUE (nom,capacité)
);

CREATE TABLE Cours (
	dateDebut DATE NOT NULL,
	dateFin DATE NOT NULL,
	id INTEGER NOT NULL UNIQUE,
	PRIMARY KEY (id) 
);

CREATE TABLE EmploiDuTemps (
	dateDebut DATE NOT NULL,
	dateFin DATE NOT NULL
	id INTEGER NOT NULL UNIQUE,
	PRIMARY KEY (id)
);
