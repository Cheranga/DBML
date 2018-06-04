using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBML.Console.Customers;
using DBML.Console.Orders;

namespace DBML.Console
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var customerModel = new CustomersDataContext())
            {
                var customer = customerModel.Customers.AsNoTracking().FirstOrDefault();
                
            }

            using (var orderModel = new OrdersDataContext())
            {
                var customer = orderModel.Customers.AsNoTracking().FirstOrDefault();
            }

            using (var shippingModel = new ShippingDataContext())
            {
                var customer = shippingModel.Customers.AsNoTracking().FirstOrDefault();
            }

            using (var customModel = new MyCustomDataContext())
            {
                var customer = customModel.Customers.AsNoTracking().FirstOrDefault();
            }

            //using (var customerOrdersModel = new CustomerDbEntities())
            //{
            //    var customer = customerOrdersModel.Customers.AsNoTracking().FirstOrDefault();
            //}

            //using (var ordersDbModel = new OrdersDbEntities())
            //{
            //    var customer = ordersDbModel.Customers.AsNoTracking().FirstOrDefault();
            //}

        }
    }
}
