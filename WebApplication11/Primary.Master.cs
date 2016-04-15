using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication11
{
    public partial class Primary : System.Web.UI.MasterPage
    {
        protected string ServerSideVariable { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadPgPopulate();




        }

        public string LoadPgPopulate()
        {
            Northwind40Entities4 asdf = new Northwind40Entities4();
            ServerSideVariable = "asasdffffffdf";

            List<string> ArtTitle;
            var data = from e in asdf.Customers
                       select e;
            foreach (var obj in data)
            {
                ServerSideVariable = obj.Company_Name;
                //return obj.Company_Name;
                //Console.WriteLine(obj);
            }

            //Northwind40Entities4 asdf2 = new Northwind40Entities4();
            //var data2 = from e in asdf2.Employees
            //           select e;
            //foreach (var obj in data)
            //{
            //    Console.WriteLine(obj);
            //    //ArtTitle.Add(obj.
            //}
            return ServerSideVariable;

        }
    }
}