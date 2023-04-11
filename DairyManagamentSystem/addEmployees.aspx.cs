using Org.BouncyCastle.Crypto;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace DairyManagamentSystem
{
    public partial class addEmployees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //to hide the label
            Label6.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //connectng to the database

            string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\iamao\source\repos\DairyManagamentSystem\DairyManagamentSystem\App_Data\main.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(constring);


            //to open method of the connection object

            con.Open();
            SqlCommand cmd = new SqlCommand();


            //associating commands with the connection
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO Employee(id, name, email, role, shift) VALUES(@id,@name,@email,@role,@role,@shift)";



            cmd.Parameters.AddWithValue("@id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@role", TextBox4.Text);
            cmd.Parameters.AddWithValue("@shift", TextBox5.Text);




            cmd.ExecuteNonQuery();//Used to execute the command
            //to close the connection
            con.Close();


            Label6.Visible = true;
            Label6.Text = "you've added an employee successfully!!";


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("ViewEmployees.aspx");



        }



    }
}