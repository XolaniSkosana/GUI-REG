<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	<style>
	 .regContainer{
	height: 650px;
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

	</style>

	<div class="regContainer">
        <asp:TextBox ID="txtRegName" CssClass="regTextBox" placeholder="Name" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px;"></asp:TextBox>
        <br />
        <br />


        <asp:TextBox CssClass="regTextBox" ID="txtRegSurname" runat="server"  placeholder="Surname" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
        <br />
        <br />
		<asp:TextBox ID="txtRegEmail" CssClass="regTextBox" runat="server"  placeholder="Email Address" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		<br />
        <br />
		<asp:TextBox ID="txtRegPhoneNo" CssClass="regTextBox" runat="server"  placeholder="Cellphone Number" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		 <br />
        <br />
        <asp:TextBox ID="txtRegUsername" CssClass="regTextBox" runat="server"  placeholder="Username" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
		 <br />
        <br />
		<asp:TextBox ID="txtRegPassword" CssClass="regTextBox" runat="server" placeholder="Password" style="border-bottom-left-radius:4px; border-top-left-radius:4px;"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="txtRegConfPassword" CssClass="regTextBox" placeholder="Confirm Password" runat="server" style="border-bottom-left-radius:4px; border-top-left-radius:4px"></asp:TextBox>
        <br />
        <br />
		
        
	</div>



</asp:Content>
