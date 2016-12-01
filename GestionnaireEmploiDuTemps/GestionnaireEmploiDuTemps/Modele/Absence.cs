using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionnaireEmploiDuTemps.Modele
{
    class Absence
    {

    private Eleve eleves;
    private Session session;
    public Eleve Eleves
        {
            get { return eleves; }
            set { eleves = value; }
        }

    public Session Session
        {
            get { return session;}
            set { session = value; }
        }
    }
}
