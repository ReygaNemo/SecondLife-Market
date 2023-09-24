using psdLec.Controller;
using psdLec.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace psdLec.Views
{
    public partial class SellerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            warn_login.Visible = false;
        }
        protected void login_account_Click(object sender, EventArgs e)
        {
            string email = login_email.Text;
            string password = login_password.Text;

            var checker = SellerController.login(email, password);
            Seller seller = checker.Item1;
            if (seller != null)
            {
                Session["seller"] = seller;
                Response.Redirect("SellerProduct.aspx");
            }
            else
            {
                warn_login.Text = checker.Item2;
                warn_login.Visible = true;
            }
        }
        protected void to_register_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterSeller.aspx");
        }
    }
}