<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="psdLec.Views.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
        .drop{
            width:300px;
        }
        .mainbutton{
            margin-right:20px;
        }
        .warna{
                        background-color:antiquewhite;
            border: 2px solid gray;
            padding: 5px 5px 5px 5px;
        }
        body{
            font-size: 20px;
        }
    </style>
</head>
<body>
    <form runat="server" class="order_form" autocomplete="off">
        <p>Buying from <asp:Label ID="sellername" runat="server"></asp:Label> </p> 
        <h1 class="warna"> Order page</h1>
        <div class="order_label">
            <label>Which product do you want to buy?</label>
        </div>
        <asp:DropDownList ID="product_list" runat="server" class="drop"></asp:DropDownList>
        <br /><br />
        <div class="order_label">
            <label>Which shipping type do you choose?</label>
        </div>
        <asp:DropDownList ID="shipping_list" runat="server" class="drop"></asp:DropDownList>
        <div class ="order_buttons">
            <br />
            <asp:Button ID="buy_button" runat="server" Text="Buy Product" OnClick="buy_button_Click" class="mainbutton"/>
            <asp:Button ID="to_main" runat="server" Text="Back to Main" OnClick="to_main_Click" class="mainbutton" />
        </div>
    </form>
</body>
</html>
