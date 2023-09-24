using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using psdLec.Model;
using psdLec.Controller;

namespace psdLec.Views
{
    public partial class Order : System.Web.UI.Page
    {
        private MydatabaseEntities2 db = new MydatabaseEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CheckUser();
                FillDropDownList();
            }
        }
        private void CheckUser()
        {
            if (Session["user"] == null && Request.Cookies["user_cookie"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Customer user;
                if (Session["user"] == null)
                {
                    var id = Request.Cookies["user_cookie"].Value;
                    user = (from x in db.Customers where x.customer_id == int.Parse(id) select x).FirstOrDefault();
                    Session["user"] = user;
                }
                else
                {
                    user = (Customer)Session["user"];
                }
            }
        }
        private void FillDropDownList()
        {
            string name = Request.QueryString["seller"];
            Seller seller = SellerController.GetSellerByName(name);
            sellername.Text = name;
            List<Product> products = TransactionController.GetProductsBySeller(seller.seller_id);
            List<string> productNames = new List<string>();
            for (int i = 0; i < products.Count; i++)
            {
                productNames.Add(products[i].product_name);
            }
            product_list.DataSource = products;
            product_list.DataTextField = "product_name";
            product_list.DataValueField = "product_name";
            product_list.DataBind();
            foreach (ListItem item in product_list.Items)
            {
                string productName = item.Text;
                Product product = products.Find(p => p.product_name == productName);
                item.Text = $"{productName} ({product.product_price:C})";
            }

            List<Shipper> shippers = TransactionController.GetAllShipper();
            List<String> shipperNames = new List<string>();
            for (int i = 0; i < shippers.Count; i++)
            {
                shipperNames.Add(shippers[i].shipper_name);
            }
            shipping_list.DataSource = shippers;
            shipping_list.DataTextField = "shipper_name";
            shipping_list.DataValueField = "shipper_name";
            shipping_list.DataBind();

        }
        protected void buy_button_Click(object sender, EventArgs e)
        {
            Product product = TransactionController.GetProductByName(product_list.SelectedValue);
            Shipper shipper = TransactionController.GetShipperByName(shipping_list.SelectedValue);
            Customer customer = (Customer)Session["user"];

            TransactionController.insertTransaction(customer.customer_id, product.product_id, shipper.Shipper_id);
            ProductController.DeleteProduct(product);
            Response.Redirect("Transaction.aspx?info" + customer.customer_name + product.product_name + shipper.shipper_name);
        }

        protected void to_main_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}