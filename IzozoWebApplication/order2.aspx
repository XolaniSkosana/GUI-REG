<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="order2.aspx.cs" Inherits="order2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link rel="stylesheet" href="myStyle.css" />
	
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
	
<!--Style for search-->
<style>
	
</style>
   <%--<!-- Start All Pages --%>
				

	<div class="all-page-title page-breadcrumb" style="font-family:'Athiti', sans-serif">
		<div class="container text-center">
			<div class="row">
				<%--<asp:TextBox ID="TextBox3" runat="server" placeholder="Search for your restaurant/meal" CssClass="txtBox"></asp:TextBox>--%>
			<%-- <asp:Button ID="Button9" runat="server" Text="Search" CssClass="button" /> --%>

				<div class="col-lg-12">
					<h1>WHAT WOULD YOU LIKE TO ORDER?</h1>
				</div>
			</div>
		</div>
	</div>
	 nnnnnn
	<br />
	<br /><br />
	<!-- End All Pages -->

	<!--Search Box-->
	
	<div style="position:sticky; position: -webkit-sticky; top:150px; text-align:center; z-index:3 " >

		 <asp:TextBox ID="txtSearch" runat="server" CssClass="responsive-textbox" placeholder="Search for your restaurant/meal" BackColor="White" Width="700px" BorderStyle="Solid" BorderWidth="2px" style="border-bottom-left-radius:1px; border-top-left-radius:1px; "></asp:TextBox>
		<a href="#"><i class="fa fa-search fa-2x" style="width: 50px; height:50px; background-color:tan; position:absolute; border-left:inherit; border-bottom:1.8px solid; border-top:1.8px solid; border-right:1.8px solid; border-left:1.8px solid" ></i></a>
		</div>
		<br />
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2 class="myHeadings">Choose your takeaway outlet</h2>
					</div>
				</div>

<!-- Start Takeaway Outlet -->

    <asp:DataList ID="DataList1" runat="server" DataSourceID="izozoDS" RepeatDirection="Horizontal" Height="293px" Width="100%">
		<ItemTemplate>
			<table>
			<tr>
				<td>
					<a class="lightbox" href='<%# Eval("outletImage") %>'>
							<!--<img style="border:solid; border-color:black" class="img-fluid" src="yamifood/images/Papas.PNG" alt="Gallery Images" >-->
							<asp:ImageButton class="img-fluid" ID="papas_img" runat="server" ImageUrl='<%# Eval("outletImage") %>' Width="310px" Height="290px" />
							
					</a></td>
			</tr>
			<tr>
				<td style="text-align:center">
                    <asp:Label ID="Label1" style="color:black; font-weight:bold; text-align:center; font-size:large" runat="server" Text='<%# Eval("outletName") %>'></asp:Label>
				</td>
			</tr>
		</table>
		</ItemTemplate>
		
		
    </asp:DataList>
     <asp:SqlDataSource ID="izozoDS" runat="server" ConnectionString="<%$ ConnectionStrings:izozodbConnectionString %>" ProviderName="<%$ ConnectionStrings:izozodbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM tblOutlet"></asp:SqlDataSource>
</asp:Content>

