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

        public Matiere(String nom)
        {
            if (nom == null)
            {
                throw new ChampsException("Le nom de la matière n'est pas renseigné");
            }
        }
    }
}
