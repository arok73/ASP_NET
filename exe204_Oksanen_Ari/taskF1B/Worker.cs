using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskF1B
{
class Worker
    {
        // data members of the class
        public string firstName;
        public string lastName;

        // parametrized constructor of a Company class
        public Worker(string fName,string lName)
        {
            firstName = fName;
            lastName = lName;
        }
    }
}