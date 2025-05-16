using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Cafe
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string un= username.Text;
            string pw= password.Text;

            string Connection= "Data Source=LAPTOP-B0Q5P4HL\\SQLEXPRESS;Initial Catalog=Cafe;Integrated Security=True";
            SqlConnection con = new SqlConnection(Connection);
            con.Open();

            Session["Connection"] = Connection;
            Session["Username"] = un;
            Session["Password"] = pw;

            //SELECT *
            //FROM Users U
            //JOIN Roles R ON U.RoleID = R.RoleID
            //WHERE U.Email = 'user@example.com'
            //  AND U.Passwor = 'password123'
            //  AND R.RoleName = 'Admin'; --Change 'Admin' to 'Client' or 'Manager' as needed

            string query = "SELECT * FROM Users U JOIN Roles R ON U.RoleID = R.RoleID WHERE U.Email = '" + un + "' AND U.Passwor = '" + pw + "' AND R.RoleName = '" + userType.SelectedValue + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                if(userType.SelectedValue == "Admin")
                {
                    Response.Redirect("Admin.aspx");
                }
                else if(userType.SelectedValue == "Client")
                {
                    Response.Redirect("Customer.aspx");
                }
                else if(userType.SelectedValue == "Manager")
                {
                    Response.Redirect("Manager.aspx");
                }
                else
                {
                    Response.Write("Invalid Username or Password");
                }
            }
            else
            {
                Response.Write("Invalid Username or Password");
            }


        }

        protected void username_TextChanged(object sender, EventArgs e)
        {

        }
    }
}