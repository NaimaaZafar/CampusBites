using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe
{
    public partial class A4_Delete_Item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch items from the database and bind to the dropdown list
                BindItems();
                BindGridView();
            }
        }

        protected void ddlItems_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void BindItems()
        {
            string connectionString = "Data Source=LAPTOP-B0Q5P4HL\\SQLEXPRESS;Initial Catalog=Cafe;Integrated Security=True";
            string query = "SELECT ItemID, ItemName FROM Items";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                ddlItems.DataSource = reader;
                ddlItems.DataTextField = "ItemName";
                ddlItems.DataValueField = "ItemID";
                ddlItems.DataBind();
            }
        }

        protected void btnDeleteItem_Click(object sender, EventArgs e)
        {
            string selectedItemID = ddlItems.SelectedValue;

            // Perform deletion using the selected item ID
            string connectionString = "Data Source=LAPTOP-B0Q5P4HL\\SQLEXPRESS;Initial Catalog=Cafe;Integrated Security=True";
            string deleteQuery = "DELETE FROM Items WHERE ItemID = @ItemID";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(deleteQuery, con);
                cmd.Parameters.AddWithValue("@ItemID", selectedItemID);

                con.Open();
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Item deleted successfully
                    Response.Redirect("A4%20Delete%20Item.aspx");
                }
                else
                {
                    
                }
            }
        }

        protected void BindGridView()
        {
            // Connection string to your database
            string connectionString = "Data Source=LAPTOP-B0Q5P4HL\\SQLEXPRESS;Initial Catalog=Cafe;Integrated Security=True";


            // SQL query to retrieve items from your database
            string query = "SELECT I.ItemID, I.ItemName, IT.TypeName, P.Price\r\nFROM Items I\r\nINNER JOIN ItemTypes IT ON I.TypeID = IT.TypeID\r\nINNER JOIN Prices P ON I.ItemID = P.ItemID;\r\n";

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
