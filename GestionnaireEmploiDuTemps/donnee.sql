SET IDENTITY_INSERT Formation ON;
INSERT INTO Formation(id,nom,nbHeureTotale) VALUES
	(1,'Concepteur informatique',15203),
	(2,'Ressource humaine',13468),
	(3,'Webdesign',15796),
	(4,'Ingénieur informatique',13458),
	(5,'Audiovisuel',14789);
SET IDENTITY_INSERT Formation OFF;


-- Année Jour Mois-- 
SET IDENTITY_INSERT Promotion ON;
INSERT INTO Promotion(id,nom,dateDebut,dateFin,formation_id) VALUES
	(1,'Promotion 1 CI','2016/10/01 00:00:01','2017/10/01 00:00:01',1),
	(2,'Promotion 2 CI','2016/10/01 00:00:01','2017/10/01 00:00:01',1),
	(3,'Promotion 1 RH','2016/12/01 00:00:01','2018/01/01 00:00:01',2),
	(4,'Promotion 2 RH','2018/01/02 00:00:01','2020/10/01 00:00:01',2),
	(5,'Promotion 1 WEB','2016/12/01 00:00:01','2018/05/01 00:00:01',3),
	(6,'Promotion 2 WEB','2016/12/01 00:00:01','2018/05/01 00:00:01',3),
	(7,'Promotion 1 II','2017/01/02 00:00:01','2018/08/01 00:00:01',4),
	(8,'Promotion 2 II','2017/01/02 00:00:01','2018/08/01 00:00:01',4),
	(9,'Promotion 1 Audio','2017/14/02 00:00:01','2020/06/01 00:00:01',5),
	(10,'Promotion 2 Audio','2017/14/02 00:00:01','2020/06/01 00:00:01',5);
SET IDENTITY_INSERT Promotion OFF;

SET IDENTITY_INSERT Eleve ON;
INSERT INTO Eleve (id,nom,prenom,mail,promotion_id) VALUES
	(1,'Garel','Ludovic','l.garel@gmail.com',1),
	(2,'Ruskoff','Quentin','q.ruskoff@gmail.com',1),
	(3,'Flinn','Laura','l.flinn@gmail.com',2),
	(4,'Fernandez','Flora','f.fernandez@gmail.com',2),
	(5,'Martin','Claire','c.martin@gmail.com',3),
	(6,'Guilo','Pierre','p.guillo@gmail.com',4),
	(7,'Leroux','Killian','k.leroux@gmail.com',4),
	(8,'Condaminas','Fabien','f.condaminas@gmail.com',5)
SET IDENTITY_INSERT Eleve OFF;


SET IDENTITY_INSERT Formateur ON;
INSERT INTO Formateur(id,nom,prenom,mail,telephone) VALUES
	(1,'Griffon','Paul','p.griffon@gmail.com','0635980123'),
	(2,'Polanski','Pierre','p.polanski@gmail.com','0698563459'),
	(3,'Ploark','Laura','l.ploark@gmail.com','0689453218'),
	(4,'Pilom','Lola','l.pilom@gmail.com','0698963459')

SET IDENTITY_INSERT Formateur OFF;	
	
	
SET IDENTITY_INSERT Matiere ON;
INSERT INTO Matiere(id,nom) VALUES
	(1,'Anglais'),
	(2,'Français'),
	(3,'Sql'),
	(4,'Graphisme'),
	(5,'marketing')
SET IDENTITY_INSERT Matiere ON;

INSERT INTO matiere_formateur (matiere_id,formateur_id) VALUES
	(1,1),
	(2,4),
	(3,2),
	(4,3),
	(5,3)
INSERT INTO matiere_formation (matiere_id,formation_id) VALUES
	(1,1),
	(3,1),
	(1,2),
	(5,2),
	(4,3),
	(3,4),
	(2,5)
	
SET IDENTITY_INSERT Salle ON;
INSERT INTO Salle(id,nom,capacite) VALUES
	(1,'Jean Paul II',20),
	(2,'Jacques Chirac',28),
	(3,'François Mitterand',15),
	(4,'Serge Gainsbourg',30)
SET IDENTITY_INSERT Salle OFF;	

