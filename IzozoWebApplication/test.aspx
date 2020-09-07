<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        
    </style>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="myStyle.css" type="text/css" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"/>
    <style>
       
        .container{
            margin-top:90px;

        }
        .glyphicon-search{
            font-size:20px
        }
        .btn-default{
            background:orange;
            width:100px;
            padding:12.5px;
        }
        .form-control{
            padding:25px;
            font-size:20px;
        }
    </style>
</head>
    
<body>
    <div id="container">
    <form runat="server">
        
        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
      <div id="lower">
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Keep me logged in"/>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
       </div>
    </form>

 </div>
    <div class="container">
        <form>
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search" name="search" />
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit">
                    <i class="glyphicon glyphicon-search"></i>
                       </button>
               </div>
            </div>
        </form>

    </div>
    <%-- <div class="container">
        
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search" name="search" />
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit">
                    <i class="glyphicon glyphicon-search"></i>
                       </button>
               </div>
            </div>
    </div>--%>
</body>
</html>
