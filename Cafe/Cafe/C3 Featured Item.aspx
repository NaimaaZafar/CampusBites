<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="C3 Featured Item.aspx.cs" Inherits="Cafe.C3_Featured_Item" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Admin Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        .navbar {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #8f7171;
            overflow: hidden;
            margin-bottom: 20px;
        }

        .navbar li {
            float: left;
        }

        .navbar li a {
             display: block;
             color: white;
             text-align: center;
             padding: 18px 20px;
        }

        .navbar li a:hover {
            background-color: #111;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #faf6de;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .admin-info {
            text-align: center;
            margin:auto;
            margin-bottom: 60px;
            padding: 2px 5px;
            background-color: #825555;
            color: white;
        }
        .admin-info h2 {
            color: white;
            font-size: 2.8em;
        }
        .grid-view
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 20px;
            color: #333333;
            border: 1px solid #999999;
            background-color: #ffffff;
            width: 100%;
            margin: auto;
            margin-bottom: 20px;
            border-collapse: collapse;
            text-align: center;
        }
        body
         {
         background-image: url('https://images.pexels.com/photos/4195334/pexels-photo-4195334.jpeg?auto=compress&cs=tinysrgb&w=600.jpg');
         margin:0;
         padding:0;
         background-size: cover;
         background-position: center;
         font-family: sans-serif;
         color: #720808;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="admin-info">
                        <h2><center>Welcome to Customer Mode</center></h2>
<p><big><b>Choose one of the following options:</b></big></p>
        </div>
        <!-- Navbar -->
        <ul class="navbar">
            <li><a href="Customer.aspx"><big>Home</big></a></li>
            <li><a href="C_2 View Items.aspx"><big>View Items</big></a></li>
            <li><a href="C3 Featured Item.aspx"><big>Featured Items</big></a></li>
            <li><a href="C_4 Buy Item.aspx"><big>Buy Item</big></a></li>
            <li><a href="C_5 Feeback.aspx"><big>Give Feedback</big></a></li>
            <li style="float:right"><a href="Login.aspx"><big>Logout</big></a></li>
        </ul>

         <div class="container">
            <h2><big><b><center>Featured Menu Items</center></b></big></h2>
            <asp:GridView ID="GridViewFeaturedItems" runat="server" CssClass="grid-view" Width="100%" OnSelectedIndexChanged="GridViewFeaturedItems_SelectedIndexChanged">
         
                <Columns>
                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
         
                </Columns>
            </asp:GridView>
        </div>

    </form>
</body>
</html>

