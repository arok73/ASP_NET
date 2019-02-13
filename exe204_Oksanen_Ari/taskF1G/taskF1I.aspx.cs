using System;
using System.Data;
using System.Windows.Forms;


namespace taskF1I
{
    public partial class taskF1I1 : System.Web.UI.Page
    {
        public class Computer
        {
            // data member of the class
            private string _computerMark;

            // constructor of class 
            public string ComputerMark
            {
                get
                {
                    return _computerMark;
                }
                set
                {
                    _computerMark = value;
              
                }
            }
        }

        public class Desktop
        {
            // data members of the class
            private string _desktopModel;
            private int _desktopType;

            // property
            public string DesktopModel
            {
                get
                {
                    return _desktopModel;
                }
                set
                {
                    _desktopModel = value;

                }
            }

            public int DesktopType
            {
                get
                {
                    return _desktopType;
                }
                set
                {
                    _desktopType = value;

                }
            }
        }

        public class Laptop
        {
            private string _laptopModel;
            private int _laptopType;

            public string LaptopModel
            {
                get
                {
                    return _laptopModel;
                }
                set
                {
                    _laptopModel = value;

                }
            }

            public int LaptopType
            {
                get
                {
                    return _laptopType;
                }
                set
                {
                    _laptopType = value;

                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label4.Text = String.Empty;
            // create an object of type Computer, Desktop and Laptop
            var computer = new Computer();
            var desktop = new Desktop();
            var laptop = new Laptop();

            computer.ComputerMark = TextBox2.Text;

            // create datatable dt and add columns named Mark, Model and Type 
            DataTable dt = new DataTable();
            dt.Columns.Add("Mark");
            dt.Columns.Add("Model");
            dt.Columns.Add("Type");
            DataRow dr = null;

            // check if type laptop or desktop
            if (TextBox1.Text == "1")
            {
                desktop.DesktopModel = TextBox3.Text;
                desktop.DesktopType = Convert.ToInt32(TextBox1.Text);
                if (ViewState["computer"] != null)
                {
                    for (int i = 0; i < 1; i++)
                    {
                        dt = (DataTable)ViewState["computer"];
                        if (dt.Rows.Count > 0)
                        {
                            dr = dt.NewRow();
                            dr["Mark"] = computer.ComputerMark;
                            dr["Model"] = desktop.DesktopModel;
                            dr["Type"] = desktop.DesktopType;
                            dt.Rows.Add(dr);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
                else
                {
                    dr = dt.NewRow();
                    dr["Mark"] = computer.ComputerMark;
                    dr["Model"] = desktop.DesktopModel;
                    dr["Type"] = desktop.DesktopType;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                ViewState["computer"] = dt;
            }
            else if (TextBox1.Text == "2")
            {
                laptop.LaptopModel = TextBox3.Text;
                laptop.LaptopType = Convert.ToInt32(TextBox1.Text);

                if (ViewState["computer"] != null)
                {
                    for (int i = 0; i < 1; i++)
                    {
                        dt = (DataTable)ViewState["computer"];
                        if (dt.Rows.Count > 0)
                        {
                            dr = dt.NewRow();
                            dr["Mark"] = computer.ComputerMark;
                            dr["Model"] = laptop.LaptopModel;
                            dr["Type"] = laptop.LaptopType;
                            dt.Rows.Add(dr);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
                else
                {
                    dr = dt.NewRow();
                    dr["Mark"] = computer.ComputerMark;
                    dr["Model"] = laptop.LaptopModel;
                    dr["Type"] = laptop.LaptopType;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                ViewState["computer"] = dt;
            }
            // validation for Textbox1
            else
            {
                Label4.Text = "Only 1 or 2 allowed!";
            }
        }

        // function to clear textboxes
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            TextBox3.Text = String.Empty;
        }
    }
}