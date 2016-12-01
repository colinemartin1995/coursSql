﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionnaireEmploiDuTemps.Modele
{
    class Promotion : Destinataire
    {
        private string nom;
        private DateTime dateDebut;
        private DateTime dateFin;
        private List<Eleve> eleve;
        private Formation formation;
        public string Nom
        {
            get { return nom; }
            set { nom = value; }
        }


        public DateTime DateDebut
        {
            get { return dateDebut; }
            set { dateDebut = value; }
        }

        public DateTime DateFin
        {
            get { return dateFin; }
            set { dateFin = value; }
        }

        public bool estDisponible(DateTime dateDebut, DateTime dateFin)
        {
            return true;
        }

        public List<Session> getSession()
        {
            return new List<Session>();
        }


        public List<Eleve> Eleve
        {
            get { return eleve; }
            set { eleve = value; }
        }
       

        public Formation Formation
        {
            get { return formation; }
            set { formation = value; }
        }


    }
}
