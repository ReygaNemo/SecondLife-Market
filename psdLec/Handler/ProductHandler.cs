using psdLec.Model;
using psdLec.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace psdLec.Handler
{
    public class ProductHandler
    {
        public static void addProduct(string name, int price, string desc, int sellid)
        {
            ProductRepo.InsertProduct(name, price, desc, sellid);
        }
        public static void DeleteProduct(Product u)
        {
            ProductRepo.DeleteProduct(u);
        }
    }
}