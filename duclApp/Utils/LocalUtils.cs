using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace duclApp
{
    public static class LocalUtils
    {
        public readonly static string ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        public const int GroupA = 1;
        public const int GroupB = 2;

        public const int YearOfPlay = 2012;
    }
}