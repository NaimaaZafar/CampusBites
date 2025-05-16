<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="M_3 Insert Item.aspx.cs" Inherits="Cafe.M_3_Insert_Item" %>

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
        justify-content: space-around;
        align-items: center;
        background-color: #781919;
        overflow: hidden;
        margin-bottom: 10px;
    }

    .navbar li {
        display: inline-block; 
        text-align: center; 
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Admin mode info and navbar -->
        <div class="admin-info">
            <h2><center>Welcome to Manager Mode</center></h2>
            <p><big><b>Choose one of the following options:</b></big></p>
        </div>
        <!-- Navbar -->
        <ul class="navbar">
            <li><a href="Manager.aspx">Home</a></li>
            <li><a href="M_2 View Items.aspx">View Items</a></li>
            <li><a href="M_3 Insert Item.aspx">Insert New Item</a></li>
            <li><a href="M_4 Delete Item.aspx">Delete Item</a></li>
            <li><a href="M_5 View All Clients.aspx">View All Clients</a></li>
            <li><a href="M_6 Featured Items.aspx">View All Featured Items</a></li>
            <li><a href="M_7 Feedback.aspx">FeedBack</a></li>
            <li style="float:right"><a href="Login.aspx">Logout</a></li>
        </ul>
        <div class="container">
    <h2><b><center><big>Insert New Item</b></center></big></h2>
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
        <asp:TextBox ID="txtItemPrice" runat="server" placeholder="Enter Price" CssClass="form-control" OnTextChanged="txtItemPrice_TextChanged"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" CssClass="btn btn-primary" />
    </div>
</div>
        
    </form>
</body>
</html>

