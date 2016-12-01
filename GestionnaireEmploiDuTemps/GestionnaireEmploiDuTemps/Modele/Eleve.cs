using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionnaireEmploiDuTemps.Modele
{
    class Eleve
    {
        private string nom;
        private string prenom;
        private string mail;
        private List<Absence> absences;
        private Promotion promotion;
        

        public List<Absence> Absences
        {
            get { return absences; }
            set { absences = value; }
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

        public int getNbAbsences(DateTime dateDebut, DateTime dateFin)
        {
            int compteurAbsence;
            compteurAbsence = 0;

            if(absences != null)
            {
                foreach (Absence absence in absences )
                {
                    if (absence.Session.DateDebut > dateDebut  && absence.Session.DateFin < dateFin)
                    {
                        compteurAbsence++;
                    }
                }
               
            }
            return compteurAbsence;
        }

        public Promotion Promotion
        {
            get { return promotion; }
            set { promotion = value; }
        }

    }
}
