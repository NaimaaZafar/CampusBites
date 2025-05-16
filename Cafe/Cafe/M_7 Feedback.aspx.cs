using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe
{
    public partial class M_7_Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Fille();
        }

       protected void Fille()
        {
            string Connection = "Data Source =LAPTOP-B0Q5P4HL\\SQLEXPRESS;Initial Catalog=cafe;Integrated Security=True";
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(Connection);
            con.Open();
            //Fill table with feedbacks
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("SELECT * FROM Feedback", con);
            System.Data.SqlClient.SqlDataReader reader = cmd.ExecuteReader();
            GridViewFeedback.DataSource = reader;
            GridViewFeedback.DataBind();
            con.Close();
        }

        protected void GridViewFeedback_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}