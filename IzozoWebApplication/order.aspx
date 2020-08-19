<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	
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
  background-color: tan;
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
</style>
    <!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>What would you like to Order?</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	
	<!-- Start Gallery -->
<%--	<div class="gallery-box">
		<div class="container-fluid">
			<div class="row">
				
			</div>
			</div>
		</div>--%>
	<br />
	<br />
	<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Choose your takeaway outlet</h2>
					</div>
				</div>
<!-- Start Takeaway Outlet -->
			<div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/images/Papas.PNG">
							<!--<img style="border:solid; border-color:black" class="img-fluid" src="yamifood/images/Papas.PNG" alt="Gallery Images" >-->
							<asp:ImageButton class="img-fluid" ID="papas_img" runat="server" ImageUrl="~/yamifood/images/Papas.PNG" />
							<h3 style="color:black; font-weight:bold;">Papas</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/images/Grillos1.PNG">
							<!--<img class="img-fluid" src="yamifood/images/Grillos1.PNG" alt="Gallery Images">-->
							<asp:ImageButton class="img-fluid" ID="grillos_img" runat="server" ImageUrl="~/yamifood/images/Grillos1.PNG" />
							<h3 style="color:black; font-weight:bold">Grillos</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/images/TnT.PNG">
							
							<asp:ImageButton class="img-fluid" ID="tnt_img" runat="server" ImageUrl="~/yamifood/images/TnT.PNG" />
							<h3 style="color:black; font-weight:bold">TnT</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/images/T-junction.PNG">
							<%--<img class="img-fluid" src="yamifood/images/T-junction.PNG" alt="Gallery Images">--%>
							<asp:ImageButton class="img-fluid" ID="tjunc_img" runat="server" ImageUrl="~/yamifood/images/T-junction.PNG" />
							<h3 style="color:black; font-weight:bold">T-junction</h3>
						</a></td>
						
					</tr>
				</table>
			</div>
	
	<!-- Start Customer Reviews -->
	<br />
	<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Choose your meal</h2>
					</div>
				</div>
					
				
	<!--Start Meal list-->
	<div class="row special-list">
				<div class="col-lg-4 col-md-6 special-grid drinks">
					<div class="gallery-single fix">
						<img src="yamifood/images/Ikota.jfif" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Kota</h4>
							<p>Currently available at...</p>
							<h5>Prices range from R10-R30</h5>
                            <asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnKota" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" />
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid drinks">
					<div class="gallery-single fix">
						<img src="yamifood/images/Pizzas.jfif" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Pizza</h4>
							<p>Currently available at ...</p>
							<h5>Prices range from R20-R200</h5>
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button1" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" />
						</div>
					</div>
					
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid drinks">
					<div class="gallery-single fix">
						<img src="yamifood/images/img-04.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Burger</h4>
							<p>Currently available at...</p>
							<h5>Prices range from R40-R120</h5>
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button2" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" />
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid lunch">
					<div class="gallery-single fix">
						<img src="yamifood/images/breakfast&brunch.jfif" class="img-fluid" alt="Image">
                        
						<div class="why-text">
							<h4>Breakfast/Brunch Meal</h4>
							<p>Currently available at...</p>
							<h5>Prices range from R50-R300</h5>
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button3" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" />
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid lunch">
					<div class="gallery-single fix">
						<img src="yamifood/images/salad.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Salad</h4>
							<p>Currently available at...</p>
							<h5>Prices range from R80-R200</h5>
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button4" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" />
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid lunch">
					<div class="gallery-single fix">
						<img src="yamifood/images/chicken.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Chicken</h4>
							<p>Currently available at...</p>
							<h5>Prices range from R30-R300</h5>
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button5" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" />
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid dinner">
					<div class="gallery-single fix">
						<img src="yamifood/images/dessert.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Dessert</h4>
							<p>Currently available at...</p>
							<h5>Prices range from R20-R150</h5>
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button6" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" />
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid dinner">
					<div class="gallery-single fix">
						<img src="yamifood/images/soup.jfif" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Soup</h4>
							<p>Currently available at...</p>
							<h5>Prices range from R10-R30</h5>
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button7" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" />
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid dinner">
					<div class="gallery-single fix">
						<img src="yamifood/images/cookedmeal.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Home-Cooked Meal</h4>
							<p>Currently available at...</p>
							<h5>Prices range from R30-R100</h5>
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button8" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" />
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
				
						
	<!-- End Customer Reviews -->
</asp:Content>

