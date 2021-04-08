<<<<<<< HEAD
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogOut.aspx.cs" Inherits="LogOut" %>

=======
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogOut.aspx.cs" Inherits="LogOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
>>>>>>> 94e98301fadc92de58c14471435aa6023e20af55
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<<<<<<< HEAD
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
=======
    <title>Logout</title>
</head>
<body>
    <br />
    <br />
    <%--<form id="form1" runat="server">--%>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Logout successful."></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">
            You will be redirect in 2 seconds. If you didnt, click here to redirect.</asp:HyperLink>
    </div>
    <br />

   <%-- </form>--%> 
</body>
</html> 
</asp:Content>

>>>>>>> 94e98301fadc92de58c14471435aa6023e20af55
