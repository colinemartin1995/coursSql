using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionnaireEmploiDuTemps.Modele
{
    class Matiere
    {
        private string nom;
        private List<Formation> formation;
        private List<Formateur> formateur;
        public string Nom
        {
            get { return nom; }
            set { nom = value; }
        }


        public List<Formateur> Formateur
        {
            get { return formateur; }
            set { formateur = value; }
        }
       

        public List<Formation> Formation
        {
            get { return formation; }
            set { formation = value; }
        }


    }
}
