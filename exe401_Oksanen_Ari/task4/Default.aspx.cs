using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace task4
{
    public partial class _Default : Page
    {
        int cart_items_count = 0;
        
        List<int> productList = new List<int>();
        List<int> quantityList = new List<int>();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnProduct1_Click(object sender, EventArgs e)
        {
            int txtbox_to_badge = Convert.ToInt32(TxtBoxProduct1.Text);
            BadgeUpdate(txtbox_to_badge);
            
            if (Session["Quantity"] != null)
                quantityList = (List<int>)Session["Quantity"];

            quantityList.Add(Convert.ToInt32(TxtBoxProduct1.Text));

            Session["Quantity"] = quantityList;
            AddToProductList(1);
        }

        protected void BtnProduct2_Click(object sender, EventArgs e)
        {
            int txtbox_to_badge = Convert.ToInt32(TxtBoxProduct2.Text);
            BadgeUpdate(txtbox_to_badge);

            if (Session["Quantity"] != null)
                quantityList = (List<int>)Session["Quantity"];

            quantityList.Add(Convert.ToInt32(TxtBoxProduct2.Text));

            Session["Quantity"] = quantityList;
            AddToProductList(2);
        }

        protected void BtnProduct3_Click(object sender, EventArgs e)
        {
            int txtbox_to_badge = Convert.ToInt32(TxtBoxProduct3.Text);
            BadgeUpdate(txtbox_to_badge);

            if (Session["Quantity"] != null)
                quantityList = (List<int>)Session["Quantity"];

            quantityList.Add(Convert.ToInt32(TxtBoxProduct3.Text));

            Session["Quantity"] = quantityList;
            AddToProductList(3);
        }

        protected void BtnProduct4_Click(object sender, EventArgs e)
        {
            int txtbox_to_badge = Convert.ToInt32(TxtBoxProduct4.Text);
            BadgeUpdate(txtbox_to_badge);

            if (Session["Quantity"] != null)
                quantityList = (List<int>)Session["Quantity"];

            quantityList.Add(Convert.ToInt32(TxtBoxProduct4.Text));

            Session["Quantity"] = quantityList;
            AddToProductList(4);
        }

        protected void BtnProduct5_Click(object sender, EventArgs e)
        {
            int txtbox_to_badge = Convert.ToInt32(TxtBoxProduct5.Text);
            BadgeUpdate(txtbox_to_badge);

            if (Session["Quantity"] != null)
                quantityList = (List<int>)Session["Quantity"];

            quantityList.Add(Convert.ToInt32(TxtBoxProduct5.Text));

            Session["Quantity"] = quantityList;
            AddToProductList(5);
        }

        protected void BtnProduct6_Click(object sender, EventArgs e)
        {
            int txtbox_to_badge = Convert.ToInt32(TxtBoxProduct6.Text);
            BadgeUpdate(txtbox_to_badge);

            if (Session["Quantity"] != null)
                quantityList = (List<int>)Session["Quantity"];

            quantityList.Add(Convert.ToInt32(TxtBoxProduct6.Text));

            Session["Quantity"] = quantityList;
            AddToProductList(6);
        }

        private void AddToProductList(int item_number)
        {

            if (Session["Product"] != null)
                productList = (List<int>)Session["Product"];

            productList.Add(item_number);

            Session["Product"] = productList;
        }

        private void BadgeUpdate(int tBox_to_badge)
        {
            if (ViewState["cart_count"] != null)
            {
                cart_items_count = Convert.ToInt32(ViewState["cart_count"]);
                cart_items_count += tBox_to_badge;
                ViewState["cart_count"] = cart_items_count;
            }
            else
            {
                cart_items_count += tBox_to_badge;
                ViewState["cart_count"] = cart_items_count;
            }
            var span = new HtmlGenericControl("span");
            span.InnerHtml = cart_items_count.ToString();
            span.Attributes["class"] = "badge badge-light";
            BtnShoppingCart.Controls.Add(span);
        }

        protected void BtnShoppingCart_OnClick(object sender, EventArgs e)
        {
            if (Session["Product"] == null)
            {
                Response.Redirect("ShoppingCartEmpty.aspx");
            }
            else
            {
                Response.Redirect("ShoppingCart.aspx");
            }
        }
    }
}