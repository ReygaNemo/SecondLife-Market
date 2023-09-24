using psdLec.Handler;
using psdLec.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace psdLec.Controller
{
    public class ProductController
    {
        public static void addProduct(string name, int price, string desc, int sellid)
        {
            ProductHandler.addProduct(name, price, desc, sellid);
        }
        public static void DeleteProduct(Product u)
        {
            ProductHandler.DeleteProduct(u);
        }
    }
}