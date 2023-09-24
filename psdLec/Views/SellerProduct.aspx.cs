using psdLec.Controller;
using psdLec.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace psdLec.Views
{
    public partial class SellerProductaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayProduct();
            Seller seller = (Seller)Session["seller"];
            sellerbank.Text = seller.seller_bank.ToString();
        }
        protected void add_product_Click(object sender, EventArgs e)
        {
            Seller seller = (Seller)Session["seller"];
            int sellerId = seller.seller_id;
            string namep = namap.Text;
            int pricep = Convert.ToInt32(hargap.Text);
            string descp = deskripsip.Text;
            ProductController.addProduct(namep, pricep, descp, sellerId);
        }
        protected void logout_Click(object sender, EventArgs e)
        {
                string[] cookies = Request.Cookies.AllKeys;

                foreach (string cookie in cookies)
                {
                    Response.Cookies[cookie].Expires = DateTime.Now.AddDays(-1);
                }

                Session.Remove("seller");
                Response.Redirect("SellerLogin.aspx");

        }
        private void DisplayProduct()
        {
            Seller seller = (Seller)Session["seller"];
            int sellerId = seller.seller_id;
            List<Product> products = TransactionController.GetProductsBySeller(sellerId);

            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("Product");
            table.Columns.Add("Price");
            table.Columns.Add("Description");

            for (int i = 0; i < products.Count; i++)
            {
                table.Rows.Add(products[i].product_id.ToString(), products[i].product_name, products[i].product_price.ToString(),  products[i].product_description);
            }

            DataList1.DataSource = table;
            DataList1.DataBind();
        }
    }
}