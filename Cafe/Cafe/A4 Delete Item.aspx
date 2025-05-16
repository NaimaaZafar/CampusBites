<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A4 Delete Item.aspx.cs" Inherits="Cafe.A4_Delete_Item" %>
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
            background-color: #781919;
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
             text-decoration: none;
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
        .grid-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .grid-view
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 18px;
            align-self:center;
            color: white;
            border-collapse: collapse;
            width: 90%;
            margin: auto;
            padding: inherit;
            margin-bottom: 30px;
        }
        .grid-view
        {
            background-color: #faf6dE;
            border: none;
            color: #781919;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 6px 12px;
            cursor: pointer;
            font-size: 20px;
            border-radius: 8px;
            position: center;
        }
        .admin-info     
        {
            text-align: center;
            margin:auto;
            margin-bottom: 60px;
            padding: 2px 5px;
            background-color: #825555;
            color: white;
        }
        .admin-info h2 
        {
            color: white;
            font-size: 2.8em;
        }
        .form-control
        {
            width: 100%;
            margin: auto;
            margin-bottom: 20px;
            padding: 6px 12px;
            display: block;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 20px;
        }
        .btn
        {
            background-color: #781919;
            border: none;
            color: white;
            margin: auto;
            padding: 6px 12px;
            cursor: pointer;
            font-size: 20px;
            border-radius: 8px;
            /*position: center;*/
        }
         body
         {
             background-image: url('https://images.pexels.com/photos/2478329/pexels-photo-2478329.jpeg?auto=compress&cs=tinysrgb&w=600.jpg');
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
        <!-- Admin mode info and navbar -->
        <div class="admin-info">
            <h2><center>Welcome to Admin Mode</center></h2>
            <p><big><b>Choose one of the following options:</b></big></p>
        </div>
        <!-- Navbar -->
        <ul class="navbar">
            <li><a href="Admin.aspx"><big>Home</big></a></li>
            <li><a href="A_2 View Items.aspx"><big>View Items</big></a></li>
            <li><a href="A_3 Insert New Item.aspx"><big>Insert New Item</big></a></li>
            <li><a href="A_4 Delete Item.apsx"><big>Delete Item</big></a></li>
            <li><a href="A5 View Clients.aspx"><big>View All Clients</big></a></li>
            <li style="float:right"><a href="Login.aspx"><big>Logout</big></a></li>
        </ul>
        <div class="container">

            <h3><big><big><big><b><center>Delete Item</center></b></big></big></big></h3>
            <asp:DropDownList ID="ddlItems" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlItems_SelectedIndexChanged"></asp:DropDownList>
            <asp:Button ID="btnDeleteItem" runat="server" Text="Delete Item" OnClick="btnDeleteItem_Click" CssClass="btn btn-primary"/>
        </div>

        <h2><big><big><center>View Items</center></big></big></h2>
            <asp:GridView ID="GridViewItems" runat="server" CssClass="grid-view" Width="712px">

            </asp:GridView>
        
    </form>
</body>
</html>
