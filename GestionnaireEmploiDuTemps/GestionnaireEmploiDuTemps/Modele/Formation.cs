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

        public Formation(String nom, float nmbrHeureTotal)
        {
            if (nom == null || nmbrHeureTotal == 0)
            {

                throw new ChampsException("L'un des champs de la formation n'est pas renseigné");

            }
        this.nom = nom;
        this.nmbrHeureTotal = nmbrHeureTotal;
        }
    }
}
