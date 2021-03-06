﻿using System;
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


        public Eleve(String nom, String prenom, string mail)
        {
            if(nom == null || prenom == null || mail == null)
            {
                throw new ChampsException("L'un des champs de l'élève n'est pas renseigné");
            }
            this.nom = nom;
            this.prenom = prenom;
            this.mail = mail;
        }

        public int getNbAbsences(DateTime dateDebut, DateTime dateFin)
        {
            int compteurAbsence;
            compteurAbsence = 0;

            if(absences != null)
            {
                foreach (Absence absence in absences )
                {
                    if (!absence.Session.estHorsDeLaPlage(dateDebut,  dateFin))
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
