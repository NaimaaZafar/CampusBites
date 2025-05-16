using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe
{
    public partial class C_2_View_Items : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fille();
            }

        }

        protected void GridViewItems_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void fille()
        {
            // Connection string to your database
            string connectionString = "Data Source=LAPTOP-B0Q5P4HL\\SQLEXPRESS;Initial Catalog=Cafe;Integrated Security=True";


            // SQL query to retrieve items from your database
            string query = "SELECT I.ItemID, I.ItemName, IT.TypeName, P.Price\r\nFROM Items I\r\nINNER JOIN ItemTypes IT ON I.TypeID = IT.TypeID\r\nINNER JOIN Prices P ON I.ItemID = P.ItemID Order by I.ItemName;\r\n";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();

                // Open the database connection and fill the DataTable
                connection.Open();
                dataAdapter.Fill(dataTable);
                connection.Close();

                // Bind the DataTable to the GridView
                GridViewItems.DataSource = dataTable;
                GridViewItems.DataBind();
            }
        }

    }
}