using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe
{
    public partial class M_5_View_All_Clients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridViewINsert();
            }
        }


        protected void GridViewINsert()
        {
            // Connection string to your database
            string connectionString = "Data Source=LAPTOP-B0Q5P4HL\\SQLEXPRESS;Initial Catalog=Cafe;Integrated Security=True";
            string query = "SELECT U.UserID, U.Username, U.Email, R.RoleName AS UserRole FROM Users U JOIN Roles R ON U.RoleID = R.RoleID WHERE R.RoleName = 'Client' ORDER BY U.Username;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                System.Data.DataTable dataTable = new System.Data.DataTable();

                // Open the database connection and fill the DataTable
                connection.Open();
                dataAdapter.Fill(dataTable);
                connection.Close();

                // Bind the DataTable to the GridView
                GridViewClients.DataSource = dataTable;
                GridViewClients.DataBind();
            }
        }

        protected void GridViewItems_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}