using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionnaireEmploiDuTemps.Modele
{
    class Formation
    {

        private string nom;

        public string Nom
        {
            get { return nom; }
            set { nom = value; }
        }

        private float nmbrHeureTotal;

        public float NmbrHeureTotal
        {
            get { return nmbrHeureTotal; }
            set { nmbrHeureTotal = value; }
        }

    }
}
