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
    }
}
