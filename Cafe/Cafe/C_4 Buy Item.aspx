<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="C_4 Buy Item.aspx.cs" Inherits="Cafe.C_4_Buy_Item" %>
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
        .btn
        {
            background-color: #781919;
            border: none;
            color: white;
            padding: 12px 30px;
            cursor: pointer;
            font-size: 1.2em;
            border-radius: 8px;
            margin:auto;
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

        <div class="admin-info">
            <h2>Welcome to Customer Mode</h2>
            <p>You have the following options in the navigation bar:</p>
        </div>
        <!-- Navbar -->
        <ul class="navbar">
            <li><a href="Customer.aspx">Home</a></li>
            <li><a href="C_2 View Items.aspx">View Items</a></li>
            <li><a href="C3 Featured Item.aspx">Featured Items</a></li>
            <li><a href="C_4 Buy Item.aspx">Buy Item</a></li>
            <li><a href="C_5 Feeback.aspx">Give Feedback</a></li>
            <li style="float:right"><a href="Login.aspx">Logout</a></li>
        </ul>

       <h2><big><big><b>Buy Items</b></big></big></h2>
        <asp:GridView ID="GridViewItems" runat="server" CssClass="grid-view" Width="100%" OnSelectedIndexChanged="GridViewItems_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:Label ID="lblQuantity" runat="server" Text="1"></asp:Label>
                        <input type="button" value="+" onclick="increaseQuantity(this)" />
                        <input type="button" value="-" onclick="decreaseQuantity(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />


        
    </form>
</body>
</html>

<script type="text/javascript">
    function increaseQuantity(element) {
        var label = element.parentNode.querySelector('#lblQuantity');
        var quantity = parseInt(label.textContent);
        label.textContent = quantity + 1;
    }

    function decreaseQuantity(element) {
        var label = element.parentNode.querySelector('#lblQuantity');
        var quantity = parseInt(label.textContent);
        if (quantity > 1) {
            label.textContent = quantity - 1;
        }
    }
</script>
