<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="C_5 Feeback.aspx.cs" Inherits="Cafe.C_5_Feeback" %>
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
        .form-control
        {
            width: 100%;
            height: 40px;
            background-color: #f2f2f2;
            border: 1px solid #e5e5e5;
            border-radius: 4px;
            padding: 0 10px;
            box-sizing: border-box;
            margin-bottom: 20px;
            font-size: 14px;
            color: #720808;
        }
        .submit-button
        {
            width: 100%;
            height: 40px;
            background-color: #8f7171;
            border: 1px solid #8f7171;
            border-radius: 4px;
            padding: 0 10px;
            box-sizing: border-box;
            margin-bottom: 20px;
            font-size: 14px;
            color: white;
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
            <h1><center><big><b>Give Feedback</center></h1>
            <div class="form-group">
                <label for="txtFeedback">Your Feedback</label>
                <textarea id="txtFeedback" runat="server" class="form-control" rows="5"></textarea>
            </div>
            <asp:Button ID="btnSubmitFeedback" runat="server" Text="Submit Feedback" CssClass="submit-button" OnClick="btnSubmitFeedback_Click" />
        </div>
        
    </form>
</body>
</html>