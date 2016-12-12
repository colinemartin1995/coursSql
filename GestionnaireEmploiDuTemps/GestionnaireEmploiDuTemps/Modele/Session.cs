using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionnaireEmploiDuTemps.Modele
{
    class Session
    {
        public DateTime dateDebut; //Attribut
        public DateTime dateFin;
        private Salle salle;
        private Promotion promotion;
        private Matiere matiere;
        private Formateur formateur;
        private List<Absence> absences; 

        public List<Absence> Absences
        {
            get { return absences; }
            set { absences = value; }
        }

        public DateTime DateDebut
        {
            get { return DateDebut; }
            set
            {
                if(DateFin <= value)
                {
                    throw new DateException("Impossible de mettre une date de debut supérieure à une date de fin ");
                }
                dateDebut = value;
            }
        }

        public DateTime DateFin //permet de changer la valeur
        {
            get { return DateFin; }
            set
            {   
                if(DateDebut >= value)
                {
                    throw new DateException("Impossible de mettre une date de fin avant la date de début");
                }
                dateFin = value;
            }
        }

        

        public Salle Salle
        {
            get { return salle; }
            set { salle = value; }
        }


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

        public Session(DateTime dateDebut, DateTime dateFin) // Majuscule propriété ------ minuscule Attribut
        {
            if (dateDebut > dateFin)
            {
                throw new DateException("L'heure de fin d'un cours ne peut être inférieure au l'heure de début");
            }
            this.dateDebut = dateDebut;
            this.dateFin = dateFin;
        }

        public bool estHorsDeLaPlage(DateTime dateDebutPlage, DateTime dateFinPlage)
        {
            return this.DateFin > dateDebutPlage || this.DateDebut < dateFinPlage;
        }
    }
}
