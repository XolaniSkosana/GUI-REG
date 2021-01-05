<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <style>
	 body{
		 font-family:'Athiti', sans-serif;
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

	<!-- Start slides -->
	<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-center">
				<img src="yamifood/images/15.jpg" alt="" />
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="box">
                                  <input type="text" name="" placeholder="Enter your location" />
                                  <asp:Button CssClass="btn4" runat="server" Text="ORDER NOW" />
                            </div>
						</div>
					</div>
				</div>
			</li>
			<li class="text-center">
				<img src="yamifood/images/7.jpg" alt="" />
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="box">
                                  <input type="text" name="" placeholder="Enter your location" />
                                  <asp:Button CssClass="btn4" runat="server" Text="ORDER NOW" />
                            </div>
						</div>
					</div>
				</div>
			</li>
			<li class="text-center">
				<img src="yamifood/images/gallery-img-01.jpg" alt="" />
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="box">
                                  <input type="text" name="" placeholder="Enter your location" />
                                  <asp:Button CssClass="btn4" runat="server" Text="ORDER NOW" />
                            </div>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
    <br /> <br />
	<!-- End slides -->
   
    <!-- control buttons -->
    
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>YOU CAN BUY</h2>
					</div>
				</div>
		<div class="container">
		
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
                            

							<asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="all" runat="server" Text="All" ForeColor="#333333" OnClick="all_Click"  />
                            <asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnFruits" runat="server" Text="Fruits" ForeColor="#333333" OnClick="btnFruits_Click"/>
                            <asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnVeg" runat="server" Text="Vegetables" ForeColor="#333333" OnClick="btnVeg_Click"/>
							 <asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnBakery" runat="server" Text="Bakery" ForeColor="#333333" OnClick="btnBakery_Click"/>
                            <asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnGroc" runat="server" Text="Groceries" ForeColor="#333333" OnClick="btnGroc_Click"/>
							<asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btnBev" runat="server" Text="Beverages" ForeColor="#333333" OnClick="btnBev_Click" />
                            <asp:LinkButton CssClass="btn btn-lg btn-circle btn-outline-new-white" ID="btndairy" runat="server" Text="Egg-Dairy" ForeColor="#333333" OnClick="btndairy_Click"/>   
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
							<asp:Button CssClass="myButton" ID="Button10" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"  />
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/grocery/banana.jpg" class="img-fluid" alt="Image"/>
						<div class="why-text">
							<h4>Bananas</h4>
							<h5> R27.80</h5>
							<asp:Button CssClass="myButton" ID="Button9" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
							
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
							<asp:Button CssClass="myButton" ID="Button16" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan"/>
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
							<asp:Button CssClass="myButton" ID="Button33" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
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

	<!-- Start Menu -->
	<!-- End Menu -->

	<!-- Start Gallery -->
	<div class="gallery-box">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>PLACES AROUND YOU</h2>
					</div>
				</div>
			</div>
			<div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="images/Capture3.png">
							<!--<img style="border:solid; border-color:black" class="img-fluid" src="yamifood/images/Papas.PNG" alt="Gallery Images" >-->
							<asp:ImageButton class="img-fluid" ID="papas_img" runat="server" ImageUrl="yamifood/images/Capture3.png"  Width="350px" Height="300px" />
							<h3 style="color:black; font-weight:bold;">Cultura</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="images/Capture4.png">
							<!--<img class="img-fluid" src="yamifood/images/Grillos1.PNG" alt="Gallery Images">-->
							<asp:ImageButton class="img-fluid" ID="grillos_img" runat="server" ImageUrl="yamifood/images/Capture4.png" Width="350px" Height="300px" />
							<h3 style="color:black; font-weight:bold">Ekangala</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="images/Capture5.png">
							<asp:ImageButton class="img-fluid" ID="tnt_img" runat="server" ImageUrl="yamifood/images/Capture5.png" Width="350px" Height="300px" />
							<h3 style="color:black; font-weight:bold">Bronkhorstspruit</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="images/Capture6.png">
							<%--<img class="img-fluid" src="yamifood/images/T-junction.PNG" alt="Gallery Images">--%>
							<asp:ImageButton class="img-fluid" ID="tjunc_img" runat="server" ImageUrl="yamifood/images/Capture6.png" Width="350px" Height="300px" />
							<h3 style="color:black; font-weight:bold">Rethabiseng</h3>
						</a></td>
						
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- End Gallery -->
	
	<!-- Start About -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12">
					<img src="yamifood/images/special.png" alt="" class="img-fluid" width="350px" height="350px" />
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>Specials</h1>
						<p>You can save more on trusted brands, just because you buying online</p>
                        <asp:Button CssClass="btn1" runat="server" Text="View deals" />
					</div>
				</div>
			</div>
            <br />
            
            <br />
            <div class="row">
				
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>Become a supplier</h1>
						<p>You can reach more customers by selling your products in our store.</p>
						<asp:Button CssClass="btn1" runat="server" Text="Apply now" PostBackUrl="~/Become a supplier.aspx"/>
					</div>
				</div>
                <div class="col-lg-6 col-md-6 col-sm-12">
				  <img src="yamifood/images/shop1.png" alt="" class="img-fluid" width="350px" height="350px" />	
				</div>
			</div><br />
            <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                    <img src="yamifood/images/54.png" alt="" class="img-fluid" width="350px" height="350px" />
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>Become a courier</h1>
						<p>Deliver with your van or motorbike and earn extra cash. </p>
						<asp:Button ID="Button1" CssClass="btn1" runat="server" Text="Apply now" PostBackUrl="~/driverRegistration.aspx" />
					</div>
				</div>
                
			</div>
		</div>
	</div>
	<!-- End About -->
	

	


</asp:Content>


