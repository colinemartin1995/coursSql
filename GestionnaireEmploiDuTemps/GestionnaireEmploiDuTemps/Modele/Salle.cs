using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionnaireEmploiDuTemps.Modele
{
    class Salle : Destinataire
    {

        private List<Session> sessions;
        private int capacite;
        private string nom;

        public string Nom
        {
            get { return nom; }
            set { nom = value; }
        }


        public List<Session> Sessions
        {
            get { return sessions; }
            set { sessions = value; }
        }
        public int Capacite
        {
            get { return capacite; }
            set { capacite = value; }
        }

        public Salle(String nom, int capacite)
        {
            if(nom == null || capacite == 0)
            {
                throw new ChampsException("L'un des champs de la salle n'est pas renseigné");
            }

            this.nom = nom;
            this.capacite = capacite;
        }

        public bool estDisponible(DateTime dateDebut, DateTime dateFin)
        {
            foreach (Session session in Sessions) // pour chaque session de la liste de sessions de notre promotion
            {
                if (session.DateFin > dateDebut && session.DateDebut < dateFin)
                {
                    //Indisponible
                    return false;

                }

            }
            return true;
        }


        public List<Session> getSession()
        {
            return this.Sessions;
        }
    }
}
