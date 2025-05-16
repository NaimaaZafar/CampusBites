using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; // Add this line to use SQL features


namespace Cafe
{
    public partial class C3_Featured_Item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fille();
            }
        }

        protected void GridViewFeaturedItems_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void fille()
        {
            // Connection string to your database
            string connectionString = "Data Source=LAPTOP-B0Q5P4HL\\SQLEXPRESS;Initial Catalog=Cafe;Integrated Security=True";

            string query = "SELECT FI.FeaturedItemID, I.ItemName, IT.TypeName, P.Price FROM FeaturedItem FI JOIN Items I ON FI.ItemID = I.ItemID JOIN Prices P ON FI.ItemID = P.ItemID JOIN ItemTypes IT ON I.TypeID = IT.TypeID Order by I.ItemName;";

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
                GridViewFeaturedItems.DataSource = dataTable;
                GridViewFeaturedItems.DataBind();
            }

        }
    }
}