﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionnaireEmploiDuTemps.Modele
{
    class DateException : Exception
    {
        public DateException(String message) : base(message)
        {

        }
    }
}
