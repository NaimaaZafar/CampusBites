<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Cafe.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
        }
        
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #faf6de;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        .payment-box {
            padding: 40px;
            background-color: #faf6de;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin: 30px 20px;
        }
        
        .payment-button {
            padding: 12px 24px;
            font-size: 16px;
            background-color: #39c286;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        .payment-button:hover {
            background-color: #0056b3;
        }
                body
         {
         background-image: url('https://images.pexels.com/photos/4199526/pexels-photo-4199526.jpeg?auto=compress&cs=tinysrgb&w=600.jpg');
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
        <div class="container">
            <div class="payment-box">
                <h1><center><big><b>Payment</b></big></center></h1>
                <!-- Add your payment details or options here -->
                <p>Payment Amount: $100</p>
                <asp:Button ID="btnPay" runat="server" Text="Pay" CssClass="payment-button" OnClick="btnPay_Click" />
            </div>
        </div>
    </form>
</body>
</html>
