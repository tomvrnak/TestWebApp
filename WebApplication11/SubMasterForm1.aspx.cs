using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace WebApplication11
{
    public partial class SubMasterForm1 : System.Web.UI.Page
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

        public string GetEmployeeTable()
        {
            Northwind40Entities4 db = new Northwind40Entities4();
            var data = from e in db.Employees
                       orderby e.Employee_ID
                       select e;
            StringBuilder sb = new StringBuilder();
            sb.Append("<table border='1'>");
            foreach (Employee e in data)
            {
                sb.Append("<tr><td>");
                sb.Append(e.Employee_ID);
                sb.Append("</td><td>");
                sb.Append(e.First_Name);
                sb.Append("</td><td>");
                sb.Append(e.Last_Name);
                sb.Append("</td></tr>");
            }
            sb.Append("</table>");
            return sb.ToString();
        }

        public List<Employee> SelectEmployees()
        {
            Northwind40Entities4 db = new Northwind40Entities4();
            var data = from e in db.Employees
                       orderby e.Employee_ID ascending
                       select e;
            return data.ToList();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            int count = GridView1.Rows.Count;
            if (count == 5)
            { 
                string asdf = e.Row.Cells[5].Text;
                if (asdf != "asdf")
                {
                e.Row.Cells[5].Text = "TOMVRNAK";
                e.Row.Cells[5].BackColor = System.Drawing.Color.Red;
                }
            }
            
            
        }

    }
}