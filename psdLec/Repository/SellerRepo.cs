using psdLec.Factory;
using psdLec.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace psdLec.Repository
{
    public class SellerRepo
    {
        static MydatabaseEntities2 db = Singleton.GetInstance();
        public static void save()
        {
            db.SaveChanges();
        }
        public static void InsertSeller(Seller u)
        {
            db.Sellers.Add(u);
            db.SaveChanges();
        }
        public static void DeleteSeller(Seller u)
        {
            db.Sellers.Remove(u);
            db.SaveChanges();
        }
        public static List<Seller> GetSeller()
        {
            return (from Seller in db.Sellers select Seller).ToList();
        }
        public static Seller GetSellerByName(String name)
        {
            Seller seller = (from s in db.Sellers where s.seller_name.Equals(name) select s).FirstOrDefault();
            return seller;
        }
        public static Seller findCustomer(string email, string password)
        {
            Seller cs = (from c in db.Sellers where c.seller_email.Equals(email) && c.seller_password.Equals(password) select c).FirstOrDefault();
            return cs;
        }
        public static Seller GetSellerByID(int id)
        {
            Seller seller = (from s in db.Sellers where s.seller_id.Equals(id) select s).FirstOrDefault();
            return seller;
        }
        public static Seller findCustomer(string email)
        {
            Seller cs = (from c in db.Sellers where c.seller_email.Equals(email) select c).FirstOrDefault();
            return cs;
        }

        public static Seller InsertSeller(string name, string email, string phone, string password)
        {
            int id = db.Sellers.Count() + 1;
            db.Sellers.Add(SellerFactory.createSeller(id, name, email, phone, password, 0));
            save();

            return findCustomer(email);
        }
    }
}