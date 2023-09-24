<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="psdLec.Views.Transaction" %>

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
        <h1 class="header">My Transaction History</h1>
        <div>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <b>Transaction ID: </b><span><%# Eval("ID") %></span><br />
                                <b>Product Name: </b><span><%# Eval("Product") %></span><br />
                                <b>Product Name: </b><span><%# Eval("ProductPrice") %></span><br />
                                <b>Shipper Name: </b><span><%# Eval("Shipper")%></span><br />
                                <b>Date of Transaction: </b><span><%# Eval("Date")%></span><br />
                                <b>Transaction Status: </b><span><%# Eval("Status")%></span><br />
                                <br />

                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
