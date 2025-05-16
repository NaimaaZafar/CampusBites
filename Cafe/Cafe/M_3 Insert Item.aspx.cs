using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe
{
    public partial class M_3_Insert_Item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddlpou();
            }
        }
        protected void ddlpou()
        {
            string Connection = "Data Source=LAPTOP-B0Q5P4HL\\SQLEXPRESS;Initial Catalog=Cafe;Integrated Security=True";
            SqlConnection con = new SqlConnection(Connection);
            con.Open();


            string query = "SELECT * FROM ItemTypes;";

            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();

            ddlItemType.DataSource = dr;
            ddlItemType.DataTextField = "TypeName";
            ddlItemType.DataValueField = "TypeID";
            ddlItemType.DataBind();

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string itemName = txtItemName.Text;
            string itemPrice = txtItemPrice.Text;
            string itemType = ddlItemType.SelectedValue;

            string Connection = "Data Source=DESKTOP-IGJNQSFLAPTOP-B0Q5P4HL\\SQLEXPRESS;Initial Catalog=Cafe;Integrated Security=True";
            SqlConnection con = new SqlConnection(Connection);
            con.Open();

            string query = @"
                INSERT INTO Items (ItemName, TypeID) 
                VALUES (@ItemName, @ItemType);
    
                INSERT INTO Prices (ItemID, Price) 
                VALUES ((SELECT ItemID FROM Items WHERE ItemName = @ItemName), @ItemPrice);
            ";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@ItemName", itemName);
            cmd.Parameters.AddWithValue("@ItemType", itemType);
            cmd.Parameters.AddWithValue("@ItemPrice", itemPrice);

            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                Response.Write("Item Inserted Successfully");
            }
            else
            {
                Response.Write("Item Insertion Failed");
            }
        }

        protected void txtItemName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtItemPrice_TextChanged(object sender, EventArgs e)
        {

        }
    }
}