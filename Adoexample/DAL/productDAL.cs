using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using Adoexample.Models;
using System.Data;

namespace Adoexample.DAL
{
    public class productDAL
    {
        string conString = ConfigurationManager.ConnectionStrings["adoConnectionString"].ToString();
        
        //Get all products proc
        public List<product> getAllProducts()
        {
            List<product> productList = new List<product>();

                using(SqlConnection con = new SqlConnection(conString))
            {
                SqlCommand command = con.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "sp_get_all_products";
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                DataTable dt = new DataTable();

                con.Open();
                dataAdapter.Fill(dt);
                con.Close();

                foreach (DataRow dr in dt.Rows)
                {
                    productList.Add(new product
                    {
                        productId = Convert.ToInt32(dr["product_id"]),
                        productName = Convert.ToString(dr["product_name"]),
                        price = Convert.ToDecimal(dr["price"]),
                        qty = Convert.ToInt32(dr["qty"]),
                        remarks = Convert.ToString(dr["remarks"])
                    });
                }
            }

                return productList;
        }
    }
}