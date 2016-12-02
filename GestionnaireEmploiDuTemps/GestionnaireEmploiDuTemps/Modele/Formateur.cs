using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionnaireEmploiDuTemps.Modele
{
    class Formateur : Destinataire
    {
        private string nom;
        private string prenom;
        private string mail;
        private string telephone;
        private Matiere matiere;
        private List<Session> sessions;


        public List<Session> Sessions
        {
            get { return sessions; }
            set { sessions = value; }
        }
        public string Nom
        {
            get { return nom; }
            set { nom = value; }
        }

        
        public string Prenom
        {
            get { return prenom; }
            set { prenom = value; }
        }


        public string Mail
        {
            get { return mail; }
            set { mail = value; }
        }


        public string Telephone
        {
            get { return telephone; }
            set { telephone = value; }
        }

        public Formateur(String nom, String prenom, String mail, String telephone) // Constructeur pour Formateur
        {

        }
        public float heuresTravaillees(DateTime debutPeriode, DateTime finPeriode)
        {
            TimeSpan tempsDeTravail = new TimeSpan(0, 0, 0);
            float heuresTravaillees = 0;
            foreach (Session session in Sessions)  // pour chaque session de la liste de sessions du Formateur
            {
         
                if (session.DateFin > debutPeriode && session.DateDebut < finPeriode)
                {
                    tempsDeTravail += session.DateFin - session.DateDebut; //permet d'ajouter une valeur à une valeur existente ex temps1 + temps2
                    //Indisponible
                    // var hours = Convert.ToSingle(ts.TotalHours);
                   heuresTravaillees = Convert.ToSingle(tempsDeTravail.TotalHours);
                }
            }
            return heuresTravaillees;
        }
        public bool estDisponible(DateTime dateDebutPlage, DateTime dateFinPlage) // date debut plage de disponibilité
        {
            foreach (Session session in Sessions) // pour chaque session de la liste de sessions de notre promotion
            {
                if (session.DateFin > dateDebutPlage && session.DateDebut < dateFinPlage)
                {
                    //Indisponible
                    return false;

                }

            }
            return true; // on verifie toutes les sessions et elles respectent toutes la condition
        }
        public List<Session> getSession()
        {
            return this.Sessions;
        }

        

        public Matiere Matiere
        {
            get { return matiere; }
            set { matiere = value; }
        }


    }
}
