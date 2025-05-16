<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Cafe.Admin" %>
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

        /*WE CAN CHANGE THE COLOR OF THE ADMIN INFO HERE*/
        .admin-info {
            text-align: center;
            margin:auto;
            margin-bottom: 60px;
            padding: 2px 5px;
            background-color: #825555;
            color: white;
        }

        /*WE CAN CHANGE THE COLOR OF THE ADMIN INFO HERE*/
        .admin-info h2 {
            color: white;
            font-size: 2.8em;
        }
         body{
             background-image: url('https://images.pexels.com/photos/253580/pexels-photo-253580.jpeg?auto=compress&cs=tinysrgb&w=600.jpg');
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

        <!-- Other content in the container -->
        <div class="container">
            
            <p>
                <center><big><b>Kindly select if you wish to insert new items, view all the items in the database, delete some items or view all the clients or their login and logout sessions.</b></big></center>
            </p>
        </div>
    </form>
</body>
</html>
