using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task4
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        // Declare database connection 
        string connection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Webshop.mdb;Persist Security Info=True";
        StringBuilder table = new StringBuilder();
        List<int> productList = new List<int>();
        List<int> quantityList = new List<int>();

        protected void Page_Load(object sender, EventArgs e)
        {
                productList = (List<int>)Session["Product"];
                quantityList = (List<int>)Session["Quantity"];

                AddToShoppingCart(productList, quantityList);
        }

        private void AddToShoppingCart(List<int> ProdID, List<int> Quantity)
        {
            int i = 0;
                table.Append("<table class=\"table\">");
                table.Append("<thead>");
                table.Append("<tr>");
                table.Append("<th>Product name</th>");
                table.Append("<th>Price</th>");
                table.Append("<th>Quantity</th>");
                table.Append("<th>Total</th>");
                table.Append("</tr>");
                table.Append("</thead>");
                table.Append("<tbody>");

            foreach (var prod in ProdID)
                        {
                            string query = "SELECT ProductName, Price FROM ProductsDB WHERE ProductID= " + prod;
                            OleDbConnection conn = new OleDbConnection(connection);
                            OleDbCommand cmd = new OleDbCommand
                            {
                                CommandText = query,
                                CommandType = CommandType.Text,
                                Connection = conn
                            };
                            conn.Open();
                            OleDbDataReader dr = cmd.ExecuteReader();

                        
                            if (dr.HasRows)
                            {
                                if (dr.Read())
                                {
                        
                                decimal total = Convert.ToDecimal(dr[1]) * Quantity[i];

                                    table.Append("<tr>");
                                    table.Append("<td>" + dr[0] + "</td>");
                                    table.Append("<td>" + dr[1] + "€</td>");
                                    table.Append("<td>" + Quantity[i] + "</td>");
                                    table.Append("<td>" + total.ToString("F2") + "€</td>");
                                    table.Append("</tr>");
                        
                                }
                            }
                        
                            conn.Close();
                            i++;
                        }
                table.Append("</tbody>");
                table.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
            
        }
    }
}