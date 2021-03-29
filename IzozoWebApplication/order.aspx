<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link rel="stylesheet" href="myStyle.css" />
	
<script src="JQuery/jquery-3.5.1.js" type="text/javascript"></script>
<script>
    function myFunction() {
        var input, filter, panel1, h4, img, i, txtValue;
        input = document.getElementsByClassName("TextBox3.ClientID").value;
        filter = input.value.toUpperCase();
        panel1 = document.getElementsById('fruitsPanel.ClientID');
        img = img.getElementsByTagName("h4");
        for (i = 0; i < img.length; i++) {
            h4 = img[i].getElementsByTagName("h4")[0];
            txtValue = h4.txtValue || h4.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                img[i].style.display = img;
            } else {
                li[i].style.display = "Theres nothing";
            } 
        }
    }
</script>	
	
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
	
    .auto-style1 {
        left: 0px;
        top: 20px;
    }
	
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
		<asp:Button ID="searchBtn" Height="50px" CssClass="btn btn-lg btn-circle btn-outline-new-white" text="Search"  runat="server" ForeColor="Black" BorderColor="Black" style="background-color:tan; position:absolute;" OnClick="searchBtn_Click" />
	
	
		
		<!--<a href="#" id="searchIcon" runat="server" ><i class="fa fa-search fa-2x"  style="width: 50px; height:50px; background-color:tan; position:absolute; border-left:inherit; border-bottom:1.8px solid; border-top:1.8px solid; border-right:1.8px solid; border-left:1.8px solid" >
		            </i></a>-->
		</div>	
		<%--<asp:Button ID="Button9" runat="server" Text="Search" CssClass="btn btn-lg btn-circle btn-outline-new-white" />--%>

		<%--new search button--%>
	
	
		<br />
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2 class="myHeadings">Choose your takeaway outlet</h2>
					</div>
				</div>
<!-- Start Takeaway Outlet -->
	
			<div class=" scrollmenu">
				<table>
				</table>
				<asp:DataList ID="DataList1" runat="server" DataSourceID="izozoDS" Height="293px" RepeatDirection="Horizontal"  Width="100%" DataKeyField="outletID">
                    <ItemTemplate>
                       <table>
						   <tr>
							   <td>&nbsp;&nbsp;&nbsp<a class="lightbox" href="<%#"data:Image/png;base64,"+ Convert.ToBase64String((byte[]) Eval("outletImage")) %>">
                                   <asp:Image ID="Image1" ImageUrl='<%#"data:Image/png;base64,"+ Convert.ToBase64String((byte[]) Eval("outletImage")) %>' Width="310px" Height="290px" runat="server" />
							   </td>
						   </tr>
						    <tr>
							   <td>
                                   &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp
								   <asp:Label ID="Label1" runat="server" Text='<%# Eval("outletName") %>' style="font-weight:800; font-size:30px; color:black; text-align:center" ></asp:Label>
							   </td>
						   </tr>
                       </table>
                    </ItemTemplate>
				 </asp:DataList>

                <asp:SqlDataSource ID="izozoDS" runat="server" ConnectionString="<%$ ConnectionStrings:izozoDBConnection %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM tbloutlet" OnSelecting="izozoDS_Selecting"></asp:SqlDataSource>


			</div>

	

		
	
	<!-- Start Customer Reviews -->
	<br />
	<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2 class="myHeadings">Choose your meal</h2>
					</div>
				</div>
					
				   
	<!--Start Meal list-->
	
<asp:DataList ID="DataList2" runat="server" DataSourceID="izozoDS2" Height="200px" Width="100%" DataKeyField="itemID" RepeatDirection="Horizontal" RepeatColumns="3">
	<ItemTemplate>
		<table>
			<tr>
				<td>
							<div class="gallery-single fix">
								<asp:Image ID="Image1" runat="server"  class="img-fluid" Height="279px" Width="400px" ImageUrl='<%#"data:Image/png;base64,"+ Convert.ToBase64String((byte[]) Eval("itemImage")) %>' />
									<div class="why-text">
										<h4><%# Eval("itemName") %></h4>
										<p>Currently available at...</p>
										<h5>Prices range from <%# Eval("itemPriceRange") %></h5>
										<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnKota" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" PostBackUrl="~/product.aspx" />
									</div>
							</div>    
                 </td>
             </tr>
		 </table>
	</ItemTemplate>
</asp:DataList>

<asp:SqlDataSource ID="izozoDS2" runat="server" ConnectionString="<%$ ConnectionStrings:izozoDBConnection %>" ProviderName="System.Data.Odbc" SelectCommand="SELECT * FROM tblItem WHERE itemCategory='Meal'" ></asp:SqlDataSource>
				
	<%--Start grocery Section--%>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2 id="Grocery" class="auto-style1">Choose your grocery item(s)</h2>
					</div>
				</div>
			</div>
		<div class="row">
				<div class="col-lg-12">
					<div class="special-menu text-center">
						<div class="button-group filter-button-group">
								
							<asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="all" runat="server" Text="All" ForeColor="#333333" OnClick="all_Click"  />
                            <asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnFruits" runat="server" Text="Fruits" ForeColor="#333333" OnClick="btnFruits_Click"/>
                            <asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnVeg" runat="server" Text="Vegetables" ForeColor="#333333" OnClick="btnVeg_Click"/>
							 <asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnBakery" runat="server" Text="Bakery" ForeColor="#333333" OnClick="btnBakery_Click"/>
                            
							<asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnBev" runat="server" Text="Beverages" ForeColor="#333333" OnClick="btnBev_Click" />
                            <asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="LinkButton1" runat="server" Text="Egg-Dairy" ForeColor="#333333" OnClick="btndairy_Click"/> 
							<asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnGroc" runat="server" Text="Other" ForeColor="#333333" OnClick="btnGroc_Click"/>

						</div>
					</div>
				</div>
			</div>
</div>
<!--DataList3_Grocery Section-->


<asp:DataList ID="DataList3" runat="server" DataSourceID="izozoDS3" Height="293px" Width="100%" RepeatDirection="Horizontal" RepeatColumns="3" CaptionAlign="Right" OnItemCommand="DataList3_ItemCommand">	
	<ItemTemplate>
<div class="menu-box">	
	<div class="container">
	<div class="row special-list">
		
				<div class="special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image2" runat="server" OnLoad="Image2_Load" class="img-fluid" Height="200px" ImageUrl='<%#"data:Image/png;base64,"+ Convert.ToBase64String((byte[]) Eval("itemImage")) %>'/>
						<div class="why-text">
							<h4><%# Eval("itemName") %></h4>
							<h5><%# Eval("itemPrice") %></h5>
							<asp:Button CssClass="myButton" ID="btnView" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" CommandArgument='<%# Eval("itemName") %>' CommandName="ViewProduct" />
						</div>
					</div>
				</div>
	</div>
</div>
</div>		
                
			</ItemTemplate>
			
	
</asp:DataList>
<asp:SqlDataSource ID="izozoDS3" runat="server" ConnectionString="<%$ ConnectionStrings:izozoDBConnection %>" ProviderName="System.Data.Odbc" SelectCommand="SELECT * FROM tblItem WHERE itemCategory LIKE 'Grocery%'" OnSelecting="izozoDS3_Selecting"></asp:SqlDataSource>			

	
	</asp:Content>

