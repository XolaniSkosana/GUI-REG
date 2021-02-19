<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="personalInfo.aspx.cs" Inherits="personalInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
	 .regContainer{
	height: 1050px;
	width:700px;
    margin-top:0px;
	margin-bottom:20px;
	margin-left:auto;
	margin-right:auto;
	background-color:rgba(210,180,140,.8);
    transition: .3s ease-in-out;
    z-index: 0;
	text-align:center;
	padding-top:50px;
	 }
	 .regTextBox{
		 border-radius:2px 2px;
		 width:200px;

	 }.button{
		 background-color: #d0a772;
		color: #fff;
		font-size: 16px;
		border-radius: 4px;
		font-weight: 600;
		line-height: 50px;
		display: inline-block;
		padding: 0 10px;
		width:72%;
		height: 50px;
		border: none;
		cursor: pointer;
		transition: all 0.5s ease-in-out;
	  }
	 @media screen and (Max-width:380px)
	 {
		 .regContainer{
			 height:300px;
			 width:300px;
		 }
		 .regTextBox{
			 width:auto;
		 }
	 }
	  .centerImg {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}
	</style>
	<div class="all-page-title page-breadcrumb" style="font-family:'Athiti', sans-serif">
		<div class="container text-center">
			<div class="row">
				<%--<asp:TextBox ID="TextBox3" runat="server" placeholder="Search for your restaurant/meal" CssClass="txtBox"></asp:TextBox>--%>
			<%-- <asp:Button ID="Button9" runat="server" Text="Search" CssClass="button" /> --%>

				<div class="col-lg-12">
					<h1>PERSONAL INFORMATION</h1>
				</div>
			</div>
		</div>
	</div>
	<br />
	
	<br />
	<div class="regContainer">
		<h1 style="text-align:center">PERSONAL INFORMATION</h1>
        <asp:TextBox ID="name" CssClass="regTextBox" placeholder="Name" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px;"></asp:TextBox>
        <br />
        <br />


        <asp:TextBox CssClass="regTextBox" ID="surname" runat="server"  placeholder="Surname" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
        <br />
        <br />
		<asp:TextBox ID="email" CssClass="regTextBox" runat="server"  placeholder="Email Address" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		<br />
        <br />
		<asp:TextBox ID="cellNo" CssClass="regTextBox" runat="server"  placeholder="Cellphone Number" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		 <br />
        <br />
        <asp:TextBox ID="username" CssClass="regTextBox" runat="server"  placeholder="Username" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		 <br />
        <br />
		<asp:TextBox ID="streetNo" CssClass="regTextBox" runat="server" placeholder="Street Number" style="border-bottom-left-radius:4px; border-top-left-radius:4px;"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="streetName" CssClass="regTextBox" placeholder="Street Name" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
        <br />
        <br />
		<asp:TextBox ID="standNo" CssClass="regTextBox" placeholder="Stand Number" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		<br />
        <br />
		<asp:TextBox ID="town" CssClass="regTextBox" placeholder="Town" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		<br />
        <br />
		<asp:TextBox ID="unitNo" CssClass="regTextBox" placeholder="Unit Number" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		<br />
        <br />
		<asp:TextBox ID="custCity" CssClass="regTextBox" placeholder="Cust City" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		<br />
        <br />
		<asp:TextBox ID="postalCode" CssClass="regTextBox" placeholder="Postal Code" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		<br />
		<br />
        <asp:Button CssClass ="button" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
	</div>
</asp:Content>

