using System;
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
        private List<Eleve> eleves;
        private Formation formations;
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

        public Promotion(String nom, DateTime dateDebut, DateTime dateFin)
        {
            if(nom == null || dateDebut == null || DateFin == null)
            {
                throw  new ChampsException("L'un des champs de la promotion n'est pas rempli");
            }
            this.nom = nom;
            this.dateDebut = dateDebut;
            this.dateFin = dateFin;
        }
        public bool estDisponible(DateTime dateDebutPlage, DateTime dateFinPlage) // date debut plage de disponibilité
        {
           foreach(Session session in Sessions) // pour chaque session de la liste de sessions de notre promotion
            {
                if(session.DateFin > dateDebutPlage && session.DateDebut < dateFinPlage) 
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


        public List<Eleve> Eleves
        {
            get { return eleves; }
            set
            {   
                if (value.Count > 24)
                {
                    throw new EffectifException("Il y a plus de 24 élèves dans la promotion");

                }


                eleves = value;
            }
        }
       

        public Formation Formations
        {
            get { return formations; }
            set { formations = value; }
        }

        

    }
}
