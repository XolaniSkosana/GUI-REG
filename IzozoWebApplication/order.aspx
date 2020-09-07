﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" href="myStyle.css" type="text/css" />
	
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

</style>
	
   <%--<!-- Start All Pages --%>
				

	<div class="all-page-title page-breadcrumb" style="font-family:'Athiti' sans-serif">
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

	<br />
	<br /><br />
	<!-- End All Pages -->

	<!--Search Box-->
	<div style="position:sticky; position:-webkit-sticky; top:150px; text-align:center; z-index:3 ">
		<asp:TextBox ID="TextBox3" runat="server" placeholder="Search for your restaurant/meal" BackColor="White" Width="700px" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
		<a href="#"><i class="fa fa-search fa-2x" style="width: 50px; height:50px; background-color:tan; position:absolute; border-left:inherit; border-bottom:1.8px solid; border-top:1.8px solid; border-right:1.8px solid"  ></i></a>
		<%--<asp:Button ID="Button9" runat="server" Text="Search" CssClass="btn btn-lg btn-circle btn-outline-new-white" />--%>
	</div>
		<br />
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2 class="myHeadings">Choose your takeaway outlet</h2>
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
						<h2 class="myHeadings">Choose your meal</h2>
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
	<%--Start grocery Section--%>
				<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Choose your grocery item(s)</h2>
					</div>
				</div>
			</div>
		<div class="row">
				<div class="col-lg-12">
					<div class="special-menu text-center">
						<div class="button-group filter-button-group">
							<button class="active" data-filter="*">All</button>
							<button data-filter=".fruits">Fruits</button>
							<button data-filter=".vegetables">Vegetables</button>
							<button data-filter=".bakery">Bakery</button>
							<button data-filter=".groceries">Groceries</button>
							<button data-filter=".beverages">Beverages</button>
							<button data-filter=".egg-dairy">Egg-Dairy</button>
						</div>
					</div>
				</div>
			</div>
				
			<div class="row special-list">
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/green-apples.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special Drinks 1</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $7.79</h5>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/banana.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special Drinks 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $9.79</h5>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/oranges.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special Drinks 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $10.79</h5>
						</div>
					</div>
				</div>
				
			
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/pineapples.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special Drinks 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $10.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/avocados.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special Drinks 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $10.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/green-grapes.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special Drinks 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $10.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid vegetables">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/spinach-bunch.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special Lunch 1</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $15.79</h5>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid vegetables">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/tomatoes.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Special Lunch 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $18.79</h5>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid vegetables">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/green-cabbage.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Special Lunch 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $20.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid vegetables">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/pumpkin.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Special Lunch 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $20.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid vegetables">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/potatoesjpg.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Special Lunch 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $20.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid vegetables">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/onions.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Special Lunch 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $20.79</h5>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid bakery">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/cake.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Special Dinner 1</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $25.79</h5>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid bakery">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/bread.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special Dinner 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid bakery">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/muffins.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special Dinner 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $24.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid groceries">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/cooking-oil.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special grocery 1</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid groceries">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/toilet-paper.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special grocery 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid groceries">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/jik.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special grocery 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid beverages">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/fanta-grape.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special grocery 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid beverages">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/wine.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special grocery 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid beverages">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/fruit-juice.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special grocery 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid egg-dairy">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/cheese.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special grocery 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid egg-dairy">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/milk.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special grocery 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid egg-dairy">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/yoghurt.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special grocery 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid egg-dairy">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/eggs.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special grocery 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid egg-dairy">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/ice-cream.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special grocery 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid egg-dairy">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/stock-spread.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Special grocery 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>
				




















		</div>
	</div>

</div>
	
	<!-- END GROCERY SECTION -->
    
</asp:Content>

