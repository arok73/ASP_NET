using System;

namespace taskF1B
{
    public partial class taskF1B1 : System.Web.UI.Page
   {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        


        protected void Button1_Click(object sender, EventArgs e)
        {
            // invoke parameterized constructors
            var company = new Company("Hissihuolto Oy", 1);
            var department = new Department("Varasto");
            var worker = new Worker("Teppo", "Tulppu");
            // add data from classes to textboxes
            TextBox1.Text = company.companyName;
            TextBox2.Text = department.departmentName;
            TextBox3.Text = worker.firstName;
            TextBox3.Text += worker.lastName;
        }
   }
}