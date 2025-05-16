<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A_3 Insert New Item.aspx.cs" Inherits="Cafe.A_3_Insert_New_Item" %>

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

        .grid-view {
            margin-top: 40px;
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
        .btn
        {
            background-color: #825555;
            border: none;
            color: white;
            padding: 6px 12px;
            cursor: pointer;
            font-size: 20px;
            border-radius: 8px;
            position: center;
        }
        .form-control
        {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border-radius: 8px;
            border: 2px solid #825555;
            align-content: center;
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
            <h2><center>Welcome to Admin Mode</center></h2>
            <p><big><b>Choose one of the following options:</b></big></p>
        </div>
        <ul class="navbar">
                <li><a href="Admin.aspx"><big>Home</big></a></li>
<li><a href="A_2 View Items.aspx"><big>View Items</big></a></li>
<li><a href="A_3 Insert New Item.aspx"><big>Insert New Item</big></a></li>
<li><a href="A_4 Delete Item.apsx"><big>Delete Item</big></a></li>
<li><a href="A5 View Clients.aspx"><big>View All Clients</big></a></li>
<li style="float:right"><a href="Login.aspx"><big>Logout</big></a></li>
        </ul>
        <div class="container">
            <h2><center>Insert New Item</center></h2>
            <div>
                <!-- Form for inserting a new item -->
                <label for="itemName"><big><b>Item Name:</b></big></label>
                <asp:TextBox ID="txtItemName" runat="server" placeholder="Enter Item Name" CssClass="form-control" OnTextChanged="txtItemName_TextChanged"></asp:TextBox>
                <br /><br />
                <label for="itemType"><big><b>Item Type:</b></big></label>
                <asp:DropDownList ID="ddlItemType" runat="server" CssClass="form-control">
                </asp:DropDownList>
                <br /><br />
                <label for="itemPrice"><big><b>Price:</b></big></label>
                <asp:TextBox ID="txtItemPrice" runat="server" placeholder="Enter Price" CssClass="form-control"></asp:TextBox>
                <br /><br />
                <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" CssClass="btn btn-primary" />
            </div>
        </div>
    </form>
</body>
</html>
