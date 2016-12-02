using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionnaireEmploiDuTemps.Modele
{
    class ChampsException : Exception
    {
        public ChampsException(String message) : base(message)
        {

        }
    }
}
