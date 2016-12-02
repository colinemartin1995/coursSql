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

        public List<Session> Sessions
        {
            get { return sessions; }
            set { sessions = value; }
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
