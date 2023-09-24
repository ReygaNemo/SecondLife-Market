using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using psdLec.Handler;
using psdLec.Model;

namespace psdLec.Controller
{
    public class SellerController
    {
        public static List<Seller> GetAllSeller()
        {
            return TransactionHandler.GetAllSeller();
        }
        public static Seller GetSellerByName(string name)
        {
            Seller seller = TransactionHandler.GetSellerByName(name);
            if (seller == null)
                return null;
            else
                return seller;
        }
        public static string checkName(string name)
        {
            string info = "";
            if (string.IsNullOrWhiteSpace(name))
            {
                info = "Name must be filled";
            }
            else if (name.Length < 5 || name.Length > 50)
            {
                info = "Name must be 5-50 characters";
            }
            return info;
        }

        public static string checkEmail(string email)
        {
            string info = "";
            if (string.IsNullOrWhiteSpace(email))
            {
                info = "Email must be filled";
            }
            else if (!email.Contains("@gmail"))
            {
                info = "Email have to contain @gmail";
            }
            return info;
        }


        public static string checkPhone(string phone)
        {
            string info = "";
            if (string.IsNullOrWhiteSpace(phone))
            {
                info = "Phone must be entered";
            }
            else if (!phone.All(char.IsDigit))
            {
                info = "Phone supposed to be number";
            }
            return info;
        }

        public static string checkPassword(string password)
        {
            string info = "";
            if (string.IsNullOrWhiteSpace(password))
            {
                info = "Password can not be empty";
            }
            else if (password.Length < 5 || password.Length > 50)
            {
                info = "Too short, add more char";
            }
            /*else if (!Regex.IsMatch(password, @"^(?=.*[a-zA-Z])(?=.*\d).+$"))
            {
                info = "Password must be alphanumeric (letters+numbers)";
            }*/
            return info;
        }
        public static (Seller, string) RegisterSeller(string name, string email, string phone, string password, int flag)
        {
            if (flag == 1)
            {
                return (null, null);
            }
            else
            {
                Seller seller = SellerHandler.RegisterSeller(name, email, phone, password);
                return (seller, "Your new Account has been made, Welcome");
            }
        }
        public static (Seller, String) login(string email, string password)
        {
            Seller seller = SellerHandler.login(email, password);
            if(seller == null)
            {
                return (null, "Account Doesn't Exist");
            }
            else
            {
                return (seller, "Account Validated, Welcome");
            }
        }
    }
}