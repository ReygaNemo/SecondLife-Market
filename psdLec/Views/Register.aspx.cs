using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using psdLec.Controllers;
using psdLec.Model;
using System.Diagnostics;

namespace psdLec.Views
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_account_Click(object sender, EventArgs e)
        {
            warn_name.Visible = false;
            warn_email.Visible = false;
            warn_phone.Visible = false;
            warn_password.Visible = false;
            String realName = register_realname.Text;
            string phoneNumber = register_phone.Text;
            String email = register_email.Text;
            String password = register_password.Text;
            // Perform validation
            int flag = 0;
            if (RegisterController.checkName(realName) != "")
            {
                warn_name.Text = RegisterController.checkName(realName);
                warn_name.Visible = true;
                flag = 1;
            }
            if (RegisterController.checkEmail(email) != "")
            {
                warn_email.Text = RegisterController.checkEmail(email);
                warn_email.Visible = true;
                flag = 1;
            }
            if (RegisterController.checkPhone(phoneNumber) != "")
            {
                warn_phone.Text = RegisterController.checkPhone(phoneNumber);
                warn_phone.Visible = true;
                flag = 1;
            }
            if (RegisterController.checkPassword(password) != "")
            {
                warn_password.Text = RegisterController.checkPassword(password);
                warn_password.Visible = true;
                flag = 1;
            }


            var checker = RegisterController.register(realName, email, phoneNumber, password, flag);
            if(flag == 1)
            {

            }
            else
            {
                Session["user"] = checker.Item1;
                Response.Redirect("Main.aspx");
            }
        }

        protected void to_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}