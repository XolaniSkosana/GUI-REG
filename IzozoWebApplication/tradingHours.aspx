<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tradingHours.aspx.cs" Inherits="tradingHours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
	<style>
	 .regContainer{
		 font-family:'Athiti', sans-serif;
	height: 400px;
	width:750px;
    margin-top:0px;
	margin-bottom:20px;
	margin-left:auto;
	margin-right:auto;
	/*background-color:rgba(210,180,140,.8);*/
	background-color:rgba(208, 167, 114, 0.8);
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
	 .h4{
		 color:grey;
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
					<h1>OUR TRADING AND DELIVERY HOURS</h1>
				</div>
			</div>
		</div>
	</div>
	<br /><br />
    <img alt="Trading Time" src="yamifood/images/clock.jpg" class="centerImg" height="450" width="300"/>
	<div class="regContainer">
    <h1 style="text-align:center; font-family:'Athiti', sans-serif"><b>TRADING AND DELIVERY HOURS</b></h1>
        <table style="width: 100%;">
            <tr>
                <td><h3><b style="font-family:'Athiti', sans-serif">TRADING DAYS</b></h3><br /></td>
                <td><h3><b style="font-family:'Athiti', sans-serif">TRADING HOURS</b></h3><br /></td>
                <td><h3><b style="font-family:'Athiti', sans-serif">DELIVERY HOURS</b></h3><br /></td>
            </tr>
            <tr>
                <td>&nbsp;<h4 class="h4">MONDAY - FRIDAY</h4>&nbsp;</td>
                <td><h4 class="h4">7AM - 6PM</h4></td>
                <td><h4 class="h4">7AM - 8PM</h4></td>
            </tr>
            <tr>
                <td>&nbsp;<h4 class="h4">SATURDAY - SUNDAY</h4>&nbsp;</td>
                <td><h4 class="h4">8AM - 5PM</h4></td>
                <td><h4 class="h4">7AM - 7PM</h4></td>
            </tr>
        </table>

       
        
		
        
	</div>



</asp:Content>

