using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using MySql.Data.MySqlClient;


namespace DairyManagamentSystem
{
    public partial class Login1 : System.Web.UI.Page
    {


        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            MySqlConnection conn = new MySqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\iamao\source\repos\DairyManagamentSystem\DairyManagamentSystem\App_Data\maindb.mdf;Integrated Security=True");

            String UserID, Password;
            UserID = user_id.Text;
            Password = pass_word.Text;

            try
            {
                String querry = "SELECT * FROM Table WHERE userID = '"+user_id.Text+"' AND Password = '"+pass_word.Text+"'";
                MySqlDataAdapter sda = new MySqlDataAdapter(querry, conn);

                DataTable dtable = new DataTable();
                sda.Fill(dtable);

                if(dtable.Rows.Count > 0 )
                {
                    UserID = user_id.Text;
                    Password = pass_word.Text;


                    //page to load next
                    Response.Redirect("addEmployees.aspx");
                    


                   
                }

                else
                {
                    MessageBox.Show("Invalid details");
                    
                }

            }
            catch 
            {
                MessageBox.Show("Invalid log");
            }
            finally
            {
                conn.Close();
            }




        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}