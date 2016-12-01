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
        private float nmbrHeureTotal;
        private List<Matiere> matiere;
        private List<Promotion> promotion;
        public string Nom
        {
            get { return nom; }
            set { nom = value; }
        }

        

        public float NmbrHeureTotal
        {
            get { return nmbrHeureTotal; }
            set { nmbrHeureTotal = value; }
        }


        public List<Matiere> Matiere
        {
            get { return matiere; }
            set { matiere = value; }
        }


        public List<Promotion> Promotion
        {
            get { return promotion; }
            set { promotion = value; }
        }

    }
}
