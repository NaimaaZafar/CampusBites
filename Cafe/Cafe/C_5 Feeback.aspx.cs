using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe
{
    public partial class C_5_Feeback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitFeedback_Click(object sender, EventArgs e)
        {

            string CustomerID = "";
            string ConnectionString = "Data Source=LAPTOP-B0Q5P4HL\\SQLEXPRESS;Initial Catalog=Cafe;Integrated Security=True";
            string querytogetid = "SELECT CustomerID FROM Customers WHERE CustomerName = @CustomerName";

            using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConnectionString))
            {
                System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand(querytogetid, connection);

                command.Parameters.AddWithValue("@CustomerName", Session["Username"]);

                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();

                System.Data.SqlClient.SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    CustomerID = reader["CustomerID"].ToString();
                }

            }


            string query = "INSERT INTO Feedback (FeedbackID, FeedbackDate, FeedbackText, CustomerID) VALUES (@FeedbackID, @FeedbackDate, @FeedbackText, @CustomerID)";

            using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConnectionString))
            {
                System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand(query, connection);

                command.Parameters.AddWithValue("@FeedbackID", txtFeedback.ToString());
                command.Parameters.AddWithValue("@FeedbackDate", DateTime.Today);
                command.Parameters.AddWithValue("@FeedbackText", DateTime.Now);
                command.Parameters.AddWithValue("@CustomerID", CustomerID);

                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }


        }
    }
}