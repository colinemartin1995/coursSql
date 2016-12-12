
/* '*' permet de lire toutes les colonnes de la table Produit */
SELECT * FROM Produit

/*Lire une colonne spécifiée*/
SELECT * FROM Produit
WHERE nom = 'Gateau Chocolat'

/*Extraire tous les produits de la catégorie "dessert" avec categorie_id = 1*/
SELECT * FROM Produit
WHERE categorie_id =1

/*Selectionner l'intégralité des produits et les classer par code*/
SELECT nom, code AS 'code_produit'
FROM Produit
WHERE nom = 'campagne'

SELECT nom, CONCAT(code, ' : ' ,nom) AS 'Code : Produit', categorie_id AS 'Numero de categorie'
FROM Produit
WHERE nom = 'campagne'
ORDER BY categorie_id DESC code DESC;
ou ORDER BY categorie_id DESC code;

/*Afficher tous les produits par nom ordre alphabetique*/
SELECT nom, CONCAT(code, ' : ' ,nom) AS 'Code : Produit', categorie_id AS 'Numero de categorie'
FROM Produit
ORDER BY nom 

/*Ajouter le nom de la categorie a côté des produits*/

SELECT
categorie.nom AS 'Nom de la categorie',
CONCAT(produit.nom,'(', code, ')') AS Produit
FROM categorie, produit
WHERE categorie.id = produit.categorie_id
ORDER BY categorie.nom

