using psdLec.Factory;
using psdLec.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace psdLec.Repository
{
    public class ProductRepo
    {
        static MydatabaseEntities2 db = Singleton.GetInstance();
        public static void save()
        {
            db.SaveChanges();
        }
        public static void InsertProduct(string name, int price, string desc, int sellid)
        {
            int id = db.Products.Count() + 1;
            db.Products.Add(ProductFactory.createProduct(id, desc ,name, sellid,  price));
            save();
        }
        public static void DeleteProduct(Product u)
        {
            Seller seller = (from p in db.Sellers where p.seller_id.Equals(u.seller_id) select p).FirstOrDefault();
            seller.seller_bank += u.product_price;
            save();
        }
        public static List<Product> GetProduct()
        {
            return (from Product in db.Products select Product).ToList();
        }
        public static List<Product> GetProductsBySeller(int sellerid)
        {
            return db.Products.Where(p => p.seller_id == sellerid).ToList();
        }

        public static Product GetProductByName(string name)
        {
            Product product= (from p in db.Products where p.product_name.Equals(name) select p).FirstOrDefault();
            return product;
        }
        public static Product GetProductByID(int id)
        {
            Product product = (from p in db.Products where p.product_id.Equals(id) select p).FirstOrDefault();
            return product;
        }
    }
}