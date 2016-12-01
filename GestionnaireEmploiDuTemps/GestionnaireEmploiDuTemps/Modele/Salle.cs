using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionnaireEmploiDuTemps.Modele
{
    class Salle : Destinataire
    {


        public bool estDisponible(DateTime dateDebut, DateTime dateFin)
        {
            return true;
        }

        public List<Session> getSession()
        {
            return new List<Session>();
        }
    }
}
