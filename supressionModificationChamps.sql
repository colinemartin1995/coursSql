/*Efface toute la table produit*/
DELETE FROM Produit 

/*Supprimer un champs avec une rêquête sql*/
DELETE FROM Produit WHERE nom ='Pierre'

/*Table de  Collation */
DELETE FROM Produit WHERE code > 'B'
DELETE FROM Produit WHERE code < 'B'

/*Modification Table Produit modifier le code par un autre */ 
UPDATE Produit
SET code ="BB263"
WHERE code = "A269D";

UPDATE Produit
SET nom="Campagne", categorie_id = 3
WHERE code = "BB2510"

