<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cafe.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CampusBites Login</title>
    <style type="text/css">
        .login-container {
            width: 300px;
            margin: 100px auto;
            padding: 30px;
            border: 1px solid #000;
            background-color: #f8edad;
        }
        .form-group {
            margin-bottom: 12px;
        }
        label {
            display: inline-block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 4px;
            margin:auto;
            border: 2px solid;
            color: #723408;
            border-radius: 4px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 2px;
            background-color: #dd630c;
            color: white;
            cursor: pointer;
            font-family: sans-serif;
        }
        input[type="submit"]:hover {
            background-color: #1ca3a3;
        }
         .radio-list label {
        display: inline-block;
        margin-right: 10px; /* Adjust as needed to control spacing between radio buttons */
        font-weight: normal; /* Optional: Remove bold text on labels */
        color: #000;
    }
         body{
             background-image: url('https://images.pexels.com/photos/5225286/pexels-photo-5225286.jpeg?auto=compress&cs=tinysrgb&w=600.jpg');
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
        <div class="login-container">
            <h2><center>Login to CampusBites</h2>
            <div class="form-group">
            <label for="username"><b>Username:</b></label>
                <asp:TextBox ID="username" runat="server" OnTextChanged="username_TextChanged"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="password"><b>Password:</b></label>
                <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <label><b>Select User Type:</b></label>
                <asp:RadioButtonList ID="userType" runat="server" CssClass="radio-list">
                    <asp:ListItem Text="<b>Client</b>" Value="Client" />
                    <asp:ListItem Text="<b>Manager</b>" Value="Manager" />
                    <asp:ListItem Text="<b>Admin</b>" Value="Admin" />
                </asp:RadioButtonList>
            </div>

            <div class="form-group">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-success" />
            </div>
        </div>
    </form>
</body>
</html>
