<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="personalInfo.aspx.cs" Inherits="personalInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
	 .regContainer{
	height: 950px;
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
        <asp:TextBox ID="TextBox1" CssClass="regTextBox" placeholder="Name" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px;"></asp:TextBox>
        <br />
        <br />


        <asp:TextBox CssClass="regTextBox" ID="TextBox2" runat="server"  placeholder="Surname" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
        <br />
        <br />
		<asp:TextBox ID="TextBox6" CssClass="regTextBox" runat="server"  placeholder="Email Address" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		<br />
        <br />
		<asp:TextBox ID="TextBox7" CssClass="regTextBox" runat="server"  placeholder="Cellphone Number" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		 <br />
        <br />
        <asp:TextBox ID="TextBox3" CssClass="regTextBox" runat="server"  placeholder="Username" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		 <br />
        <br />
		<asp:TextBox ID="TextBox4" CssClass="regTextBox" runat="server" placeholder="Street Number" style="border-bottom-left-radius:4px; border-top-left-radius:4px;"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox5" CssClass="regTextBox" placeholder="Street Name" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
        <br />
        <br />
		<asp:TextBox ID="TextBox8" CssClass="regTextBox" placeholder="Town" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		<br />
        <br />
		<asp:TextBox ID="TextBox9" CssClass="regTextBox" placeholder="Unit Number" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		<br />
        <br />
		<asp:TextBox ID="TextBox10" CssClass="regTextBox" placeholder="Stand Number" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		<br />
        <br />
		<asp:TextBox ID="TextBox11" CssClass="regTextBox" placeholder="Postal Code" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>

        
	</div>
</asp:Content>

