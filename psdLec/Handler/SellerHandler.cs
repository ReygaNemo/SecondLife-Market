using psdLec.Model;
using psdLec.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace psdLec.Handler
{
    public class SellerHandler
    {
        public static Seller RegisterSeller(string name, string email, string phone, string password)
        {
            Seller cs = SellerRepo.findCustomer(email);
            if (cs != null)
            {
                return null;
            }

            cs = SellerRepo.InsertSeller(name, email, phone, password);
            return cs;
        }
        public static Seller login(string email, string password)
        {
            Seller cs = SellerRepo.findCustomer(email, password);
            if (cs == null)
            {
                return null;
            }
            return cs;
        }
    }
}