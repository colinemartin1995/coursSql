using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionnaireEmploiDuTemps.Modele
{
    class Session
    {
        private DateTime dateDebut;
        private DateTime dateFin;
        private Salle salle;
        private Promotion promotion;
         private Matiere matiere;

        public DateTime DateDebut
        {
            get { return DateDebut; }
            set { DateDebut = value; }
        }

        public DateTime DateFin
        {
            get { return DateFin; }
            set { DateFin = value; }
        }

        

        public Salle Salle
        {
            get { return salle; }
            set { salle = value; }
        }

        private Formateur formateur;

        public Formateur Formateur
        {
            get { return formateur; }
            set { formateur = value; }
        }
       

        public Matiere Matiere
        {
            get { return matiere; }
            set { matiere = value; }
        }
       

        public Promotion Promotion
        {
            get { return promotion; }
            set { promotion = value; }
        }


    }
}
