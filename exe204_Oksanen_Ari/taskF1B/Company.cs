using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskF1B
{
    public class Company
    {
        // data members of the class
        public string companyName;
        public int companyID;

        // parametrized constructor of a Company class
        public Company(string cName, int cID)
        {
            companyName = cName;
            companyID = cID;
        }

    }
}