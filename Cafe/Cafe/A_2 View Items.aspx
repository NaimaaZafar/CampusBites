<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A_2 View Items.aspx.cs" Inherits="Cafe.A_2_View_Items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Items</title>
    <style>
        /* Add your CSS styles here */
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
        .admin-info     
        {
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
            margin-top: 40px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 18px;
            align-self:center;
            color: #333333;
            border-collapse: collapse;
            width: 100%;
            margin: auto;
            padding: inherit;
        }
         body
         {
         background-image: url('https://images.pexels.com/photos/6188605/pexels-photo-6188605.jpeg?auto=compress&cs=tinysrgb&w=600.jpg');
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
        <!-- Navbar -->
        <div class="admin-info">
           <h2>Welcome to Admin Mode</h2>
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

        <!-- Items GridView -->
        <div class="container">
            <h2><big><big><center>View Items</center></big></big></h2>
            <asp:GridView ID="GridViewItems" runat="server" CssClass="grid-view" Width="712px" OnSelectedIndexChanged="GridViewItems_SelectedIndexChanged">

            </asp:GridView>
        </div>
    </form>
</body>
</html>
