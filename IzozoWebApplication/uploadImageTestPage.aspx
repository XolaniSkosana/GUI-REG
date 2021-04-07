<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploadImageTestPage.aspx.cs" Inherits="uploadImageTestPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="myStyle.css" />
	<script src="JQuery/jquery-3.5.1.js" type="text/javascript"></script>

	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />  
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="http://www.w3school.com/lib/w3.css" />
     <!-- Site Metas -->
    <title>IzozoQHA</title> 
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="yamifood/css/bootstrap.min.css"/>    
	<!-- Site CSS -->
    <link rel="stylesheet" href="yamifood/css/style.css"/>    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="yamifood/css/responsive.css"/>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="yamifood/css/custom.css" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"/>
<script src="JQuery/jquery-3.5.1.js" type="text/javascript"></script>
   
     <style>
div.scrollmenu {
  
  overflow: auto;
  white-space: nowrap;
}

div.scrollmenu a {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px;
  text-decoration: none;
}

div.scrollmenu a:hover {
  background-color:tan;
}
.main{
	position:absolute;
	top:50%;
	left:50%;
	transform: translate(-50%, 50%);
}
.input{
	border:3px solid #32e17c;
	height:40px;
	width:300px;
	border-radius:50px;
	padding: 0px 10px;
}
.txtBox1{
width:700px;
position:sticky;
position:-webkit-sticky;
top:150px;
color:black;
background-color:white;
border:thin;


}
.txtBox1:hover{
            -webkit-box-shadow:rgb(0,0,0);
            border-color:tan;
        }
.btn{
	text-transform: uppercase;
	padding: 19px 36px;
}
.btn{
	display: inline-block;
	font-weight: 600;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 2px solid transparent;
	padding: 12px 30px;
	font-size: 16px;
	line-height: 1.5;
	border-radius: .1875rem;
	transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}
.btn-outline-new-white {
    color: #fff;
    background-color: transparent;
    background-image: none;
    border-color: #cfa671;
}
.btn-outline-new-white:hover {
    color: #ffffff;
    background-color: #cfa671;
    border-color: #cfa671;
}
.btn-outline-new-white:active{
	background-color:tan;
}
        </style>
</head>
 
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txt1" runat="server" BorderStyle="Solid"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
            <asp:DataList ID="DataList1" runat="server" DataSourceID="izozoDS" Height="293px" Width="100%" DataKeyField="itemID" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatColumns="4">
                <ItemTemplate>
                   <table>
                    
                        <tr>
                           <td>
                      
					<div class="gallery-single fix">
		            <asp:Image ID="Image1" runat="server" class="img-fluid" Height="279px" Width="400px" ImageUrl='<%#"data:Image/png;base64,"+ Convert.ToBase64String((byte[]) Eval("itemImage")) %>' Visible="true" />
						<div class="why-text">
							<h4><%# Eval("itemName") %></h4>
							<p>Currently available at...</p>
							<h5>Prices range from R10-R30</h5>
                            <asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnKota" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				
                              
                           </td>
                       </tr>
                        <tr>
                          
                       
                            <td style="text-align:center">
                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("itemPrice") %>'></asp:Label>
                                </td>
                        <tr>
                            <td style="text-align:center">
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("itemID") %>' CommandName="AddToCart">ADD TO CART</asp:LinkButton>
                            </td>
                           </tr>
                                
                    
                   </table>
                </ItemTemplate>
            </asp:DataList>
            
            &nbsp;<asp:SqlDataSource ID="izozoDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM tblitem"></asp:SqlDataSource>  
            
            
        </div>
    </form>
</body>
</html>
