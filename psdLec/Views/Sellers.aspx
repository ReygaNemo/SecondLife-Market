<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sellers.aspx.cs" Inherits="psdLec.Views.Sellers" %>

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
    </style>
</head>
<body>
    <form runat="server" class="seller_form" autocomplete="true">
        <h1 class="warna">Pick one of our seller!</h1>
        <asp:DropDownList ID="seller_list" runat="server" class="drop" AutoPostBack="true" OnSelectedIndexChanged="seller_list_SelectedIndexChanged"></asp:DropDownList>
        <br />
        <br />
        <div class ="order_button">
            <asp:Button ID="to_order" runat="server" Text="Order" OnClick="to_order_Click" class="mainbutton"/>
            <asp:Button ID="to_main" runat="server" Text="Back to Main" OnClick="to_main_Click" class="mainbutton"/>
        </div>
    </form>
</body>
</html>
