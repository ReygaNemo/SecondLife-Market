using psdLec.Controller;
using psdLec.Controllers;
using psdLec.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace psdLec.Views
{
    public partial class RegisterSeller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("SellerLogin.aspx");
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            warn_name.Visible = false;
            warn_email.Visible = false;
            warn_phone.Visible = false;
            warn_password.Visible = false;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string name = txtName.Text;
            string phone = txtPhone.Text;
            int flag = 0;
            if (RegisterController.checkName(name) != "")
            {
                warn_name.Text = RegisterController.checkName(name);
                warn_name.Visible = true;
                flag = 1;
            }
            if (RegisterController.checkEmail(email) != "")
            {
                warn_email.Text = RegisterController.checkEmail(email);
                warn_email.Visible = true;
                flag = 1;
            }
            if (RegisterController.checkPhone(phone) != "")
            {
                warn_phone.Text = RegisterController.checkPhone(phone);
                warn_phone.Visible = true;
                flag = 1;
            }
            if (RegisterController.checkPassword(password) != "")
            {
                warn_password.Text = RegisterController.checkPassword(password);
                warn_password.Visible = true;
                flag = 1;
            }
            var checker = SellerController.RegisterSeller(name, email, phone, password, flag);
            if (flag == 1)
            {

            }
            else
            {
                Session["seller"] = checker.Item1;
                Response.Redirect("SellerLogin.aspx");
            }
        }
        }
    }