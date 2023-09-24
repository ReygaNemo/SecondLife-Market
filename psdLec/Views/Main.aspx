<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="psdLec.Views.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
                body{
            font-size: 20px;
        }
        .label1{
            padding-right:30px;
            
        }
        .register_account{
            margin-left: 20px;
        }
        .password_login{
            width: 220px;
            
            font-size: 20px;
        }
        .header{
            background-color:antiquewhite;
            border: 2px solid gray;
            padding: 5px 5px 5px 5px;
        }
        .main_button{
            margin-right:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="header">==>SecondLife Market<== </h1>
        <p>Welcome back, <asp:Label ID="loggedname" runat="server"></asp:Label> </p> 
        <asp:Button ID="Button2" runat="server" Text="Logout" class="main_button" OnClick="logout_Click"/>
        <br />
        <div class ="navbar">
            <br />
            <asp:Button ID="to_order" runat="server" Text="Order" class="main_button" OnClick="to_order_Click" />
            <asp:Button ID="to_transaction" runat="server" Text="Transaction" class="main_button" OnClick="to_transaction_Click" />
            <asp:Button ID="Button1" runat="server" Text="Join to be a seller now" class="main_button" OnClick="seller_Click" />
        </div>
    </form>
</body>
</html>
