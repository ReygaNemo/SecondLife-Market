<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellerProduct.aspx.cs" Inherits="psdLec.Views.SellerProductaspx" %>

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
        <h1 class="header"> Product yang anda jual: </h1>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <b>ID: </b><span><%# Eval("ID") %></span><br />
                                <b>Product: </b><span><%# Eval("Product") %></span><br />
                                <b>Shipper: </b><span><%# Eval("Price")%></span><br />
                                <b>Date: </b><span><%# Eval("Description")%></span><br />
                                <br />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        <p>Bank Money <asp:Label ID="sellerbank" runat="server"></asp:Label> </p> 
        <h1 class="header"> Tambah Product Baru: </h1>
        <div class="login_form">
            <label>Nama Product</label>
            <asp:TextBox ID="namap" runat="server" class="password_login" />
            <br /><br />
            <label>Harga Product</label>
            <asp:TextBox ID="hargap" runat="server" class="password_login" />
            <br /><br />
            <label>Deskripsi Produk</label>
            <asp:TextBox ID="deskripsip" runat="server" class="password_login" />
            <br /><br />
            <div class="buttons">
                <asp:Button ID="login_account" runat="server" Text="Add new product" class="login_account" OnClick="add_product_Click"/>
                <asp:Button ID="to_register" runat="server" Text="Logout" class="register_account" OnClick="logout_Click"/>
            </div>
        </div>
    </form>
</body>
</html>
