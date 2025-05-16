<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="M_5 View All Clients.aspx.cs" Inherits="Cafe.M_5_View_All_Clients" %>
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
                body
        {
            background-image: url('https://images.pexels.com/photos/4553118/pexels-photo-4553118.jpeg?auto=compress&cs=tinysrgb&w=600.jpg');
            margin:0;
            padding:0;
            background-size: cover;
            background-position: center;
            font-family: sans-serif;
            color: #720808;
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
            <h2><big><center>View All Clients</center></big></h2>
            <asp:GridView ID="GridViewClients" runat="server" CssClass="grid-view" Width="712px" OnSelectedIndexChanged="GridViewItems_SelectedIndexChanged">

            </asp:GridView>
        </div>
    </form>
</body>
</html>

