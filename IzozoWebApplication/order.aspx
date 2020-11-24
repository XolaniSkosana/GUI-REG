<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

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
.mySearchBox{
	Width:700px;
}

@media screen and (max-width:300px)
{
	.mySearchBox{
	Width:100px;
	font-size:small;
}
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

	<br />
	<br /><br />
	<!-- End All Pages -->

	<!--Search Box-->
	<div style="position:sticky; position:-webkit-sticky; top:150px; text-align:center; z-index:3 ">
		<asp:TextBox ID="TextBox3" runat="server" placeholder="Search for your restaurant/meal" BackColor="White" Width="700px" BorderStyle="Solid" BorderWidth="2px" style="border-bottom-left-radius:1px; border-top-left-radius:1px;"></asp:TextBox>
		<a href="#"><i class="fa fa-search fa-2x" style="width: 50px; height:50px; background-color:tan; position:absolute; border-left:inherit; border-bottom:1.8px solid; border-top:1.8px solid; border-right:1.8px solid; border-left:1.8px solid" ></i></a>
		<%--<asp:Button ID="Button9" runat="server" Text="Search" CssClass="btn btn-lg btn-circle btn-outline-new-white" />--%>
	</div>
		<br />
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2 class="myHeadings">Choose your takeaway outlet</h2>
					</div>
				</div>
<!-- Start Takeaway Outlet -->
	<div class="button-group filter-button-group">
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
                            <asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnKota" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" PostBackUrl="~/product.aspx" />
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
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button1" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" PostBackUrl="~/product.aspx" />
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
							<asp:Button ID="Button2" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" CssClass="btn btn-lg btn-circle btn-outline-new-white" PostBackUrl="~/product.aspx" />
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
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button3" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" PostBackUrl="~/product.aspx" />
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
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button4" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" PostBackUrl="~/product.aspx" />
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
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button5" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" PostBackUrl="~/specials.aspx" />
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
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button6" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" PostBackUrl="~/product.aspx" />
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
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button7" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" PostBackUrl="~/product.aspx" />
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
							<asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="Button8" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				
			</div>
	<%--Start grocery Section--%>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2 id="Grocery">Choose your grocery item(s)</h2>
					</div>
				</div>
			</div>
		<div class="row">
				<div class="col-lg-12">
					<div class="special-menu text-center">
						<div class="button-group filter-button-group">
							<!--<button class="active" data-filter="*">All</button>
							<button data-filter=".fruits">Fruits</button>
							<button data-filter=".vegetables">Vegetables</button>
							<button data-filter=".bakery">Bakery</button>
							<button data-filter=".groceries">Groceries</button>
							<button data-filter=".beverages">Beverages</button>
							<button data-filter=".egg-dairy">Egg-Dairy</button>-->
                            
							<!--<button class="active" id="testBtn" runat="server"  type="button" onserverclick="testBtn_ServerClick">test button</button>-->
				

								
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
				
			<div class="row special-list">
                <asp:Panel ID="fruitsPanel" runat="server">
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
                        <img src="yamifood/grocery/green-apples.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Apples</h4>
							<h5> R23.80</h5>
							<asp:Button CssClass="myButton" ID="Button10" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" OnClick="Button10_Click" />
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/banana.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Bananas</h4>
							<h5> R27.80</h5>
							<asp:Button CssClass="myButton" ID="Button9" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" OnClick="Button9_Click"/>
							
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/oranges.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Oranges</h4>
							<h5> R55.80</h5>
							<asp:Button CssClass="myButton" ID="Button11" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				<%--<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/pineapples.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Pineapple</h4>
							<h5> R107.60</h5>
							<asp:Button CssClass="myButton" ID="Button12" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/avocados.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Avocados</h4>
							<h5> R20.00</h5>
							<asp:Button CssClass="myButton" ID="Button13" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/green-grapes.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Grapes</h4>
							<h5> R53.00</h5>
							<asp:Button CssClass="myButton" ID="Button14" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>--%>
				</asp:Panel>
				<asp:Panel ID="vegPanel" runat="server">
				<div class="col-lg-4 col-md-6 special-grid vegetables">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/spinach-bunch.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Spinach</h4>
							<h5> R8.50</h5>
							<asp:Button CssClass="myButton" ID="Button15" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid vegetables">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/tomatoes.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Tomatoes</h4>
							<h5> R22.80</h5>
							<asp:Button CssClass="myButton" ID="Button16" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid vegetables">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/green-cabbage.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Cabbage</h4>
							<h5> R10.50</h5>
							<asp:Button CssClass="myButton" ID="Button17" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				<%--<div class="col-lg-4 col-md-6 special-grid vegetables">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/pumpkin.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Pumpkin</h4>
							<h5> R10.00</h5>
							<asp:Button CssClass="myButton" ID="Button18" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid vegetables">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/potatoesjpg.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Potatoes</h4>
							<h5> R21.50</h5>
							<asp:Button CssClass="myButton" ID="Button19" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid vegetables">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/onions.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Onions</h4>
							<h5> R16.33</h5>
							<asp:Button CssClass="myButton" ID="Button20" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>--%>
				</asp:Panel>
				<asp:Panel ID="bakeryPanel" runat="server">
				<div class="col-lg-4 col-md-6 special-grid bakery">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/cake.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Cake</h4>
							<h5> R79.99</h5>
							<asp:Button CssClass="myButton" ID="Button21" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid bakery">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/bread.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Bread</h4>
							<h5> R15.99</h5>
							<asp:Button CssClass="myButton" ID="Button22" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid bakery">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/muffins.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Muffins</h4>
							<h5> R20.00</h5>
							<asp:Button CssClass="myButton" ID="Button23" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				</asp:Panel>
				<asp:Panel ID="groceryPanel" runat="server">

				<div class="col-lg-4 col-md-6 special-grid groceries">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/cooking-oil.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Cooking oil</h4>
							<h5> R60.00</h5>
							<asp:Button CssClass="myButton" ID="Button24" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid groceries">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/toilet-paper.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Toilet Paper</h4>
							<h5> R80.77</h5>
							<asp:Button CssClass="myButton" ID="Button35" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid groceries">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/joko.PNG" class="img-fluid" alt="Image" style="width:100%; height:200px"/>
						<div class="why-text">
							<h4>JOKO</h4>
							<h5> R497.99</h5>
							<asp:Button CssClass="myButton" ID="jokoBtn" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
			</asp:Panel>
				<asp:Panel ID="bevPanel" runat="server">
				<div class="col-lg-4 col-md-6 special-grid beverages">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/fanta-grape.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Fanta Grape</h4>
							<h5> R120.99</h5>
							<asp:Button CssClass="myButton" ID="Button26" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid beverages">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/wine.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Wine</h4>
							<h5> R20.00</h5>
							<asp:Button CssClass="myButton" ID="Button27" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid beverages">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/fruit-juice.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Fruit Juice</h4>
							<h5> R40.00</h5>
							<asp:Button CssClass="myButton" ID="Button28" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				</asp:Panel>
				<asp:Panel ID="dairyPanel" runat="server">
				<div class="col-lg-4 col-md-6 special-grid egg-dairy">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/cheese.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Cheese</h4>
							<h5> R40.00</h5>
							<asp:Button CssClass="myButton" ID="Button29" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid egg-dairy">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/milk.jpg" class="img-fluid" alt="Image" height="400"/>
						<div class="why-text">
							<h4>Milk</h4>
							<h5> R77.98</h5>
							<asp:Button CssClass="myButton" ID="Button30" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid egg-dairy">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/yoghurt.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Yoghurt</h4>
							<h5> R38.95</h5>
							<asp:Button CssClass="myButton" ID="Button31" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				<%-- <div class="col-lg-4 col-md-6 special-grid egg-dairy">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/eggs.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Eggs</h4>
							<h5> R60.00</h5>
							<asp:Button CssClass="myButton" ID="Button32" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid egg-dairy">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/ice-cream.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Ice Cream</h4>
							<h5> R50.00</h5>
							<asp:Button Cs sClass="myButton" ID="Button33" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid egg-dairy">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/stock-spread.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Stock-Spread</h4>
							<h5> R29.99</h5>
							<asp:Button CssClass="myButton" ID="Button34" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>--%>
				</asp:Panel>
		</div>
	</div>

	<script>
        $('#testBtn').click(function (e) {
            e.preventDefault();
            someIdClient.SetVisible(true)
            return false;
        }
    </script>
	
	<!-- END GROCERY SECTION -->
    
</asp:Content>

