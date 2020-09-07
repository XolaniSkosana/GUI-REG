<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <style>
	 body{
		 font-family:'Athiti', sans-serif;
	 }
 </style>
   <!-- Start slides -->
	<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-center">
				<img src="yamifood/images/15.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="box">
                                  <input type="text" name="" placeholder="Enter your location" />
                                  <i class="fa fa-angle-right" aria-hidden="true"></i>
                                  <input type="submit" name="" value="ORDER NOW" />
                            </div>
						</div>
					</div>
				</div>
			</li>
			<li class="text-center">
				<img src="yamifood/images/7.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="box">
                                  <input type="text" name="" placeholder="Enter your location" />
                                  <i class="fa fa-angle-right" aria-hidden="true"></i>
                                  <input type="submit" name="" value="ORDER NOW" />
                            </div>
						</div>
					</div>
				</div>
			</li>
			<li class="text-center">
				<img src="yamifood/images/gallery-img-01.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="box">
                                  <input type="text" name="" placeholder="Enter your location" />
                                  <i class="fa fa-angle-right" aria-hidden="true"></i>
                                  <input type="submit" name="" value="ORDER NOW" />
                            </div>
						</div>
					</div>
				</div>
			</li>
		</ul>
        <div class="box">
              <input type="text" name="" placeholder="Enter your location" />
              <input type="submit" name="" value="ORDER NOW" />
        </div>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
	<!-- End slides -->
	
	<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>You can buy</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="special-menu text-center">
						<div class="button-group filter-button-group">
							<button class="active" data-filter=".takeaway">Takeaway</button>
							<button data-filter=".fruits">Fruits</button>
							<button data-filter=".dinner">Vegetables</button>
                            <button data-filter=".lunch">Backery</button>
							<button data-filter=".lunch">Groceries</button>
							<button data-filter=".drinks">Beverages</button>
                            <button data-filter=".dinner">Egg & dairy</button>
						</div>
					</div>
				</div>
			</div>
				
			<div class="row special-list">
				
				<div class="col-lg-4 col-md-6 special-grid takeaway">
					<div class="gallery-single fix">
						<img src="yamifood/images/img-06.jpg" class="img-fluid" alt="Image" />
						<div class="why-text">
							<h4>Special Lunch 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $20.79</h5>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid takeaway">
					<div class="gallery-single fix">
						<img src="yamifood/images/img-07.jpg" class="img-fluid" alt="Image" />
						<div class="why-text">
							<h4>Special Dinner 1</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $25.79</h5>
						</div>
					</div>
				</div>

                <div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/images/img-09.jpg" class="img-fluid" alt="Image" />
						<div class="why-text">
							<h4>Special Dinner 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $24.79</h5>
						</div>
					</div>
				</div>

                <div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/images/g.jpg" class="img-fluid" alt="Image" />
						<div class="why-text">
							<h4>Special Dinner 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $24.79</h5>
						</div>
					</div>
				</div>

                <div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/images/gallery-img-02.jpg" class="img-fluid" alt="Image" />
						<div class="why-text">
							<h4>Special Dinner 1</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $25.79</h5>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/images/gallery-img-06.jpg" class="img-fluid" alt="Image" />
						<div class="why-text">
							<h4>Special Dinner 2</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $22.79</h5>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/images/gallery-img-04.jpg" class="img-fluid" alt="Image" />
						<div class="why-text">
							<h4>Special Dinner 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $24.79</h5>
						</div>
					</div>
				</div>

                <div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/images/gallery-img-05.jpg" class="img-fluid" alt="Image" />
						<div class="why-text">
							<h4>Special Dinner 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $24.79</h5>
						</div>
					</div>          
				</div>

                <div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<img src="yamifood/images/15.jpg" class="img-fluid" alt="Image" />
						<div class="why-text">
							<h4>Special Dinner 3</h4>
							<p>Sed id magna vitae eros sagittis euismod.</p>
							<h5> $24.79</h5>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- End Menu -->
	
	<!-- Start Gallery -->
	<div class="gallery-box">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Places around you</h2>
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
					<img src="yamifood/images/Capture.png" alt="" class="img-fluid" width="500" height="500" />
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>Specials</h1>
						<p>You can save more on trusted brands, just because you buying online</p>
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="#">View deals</a>
					</div>
				</div>
			</div>
            <br />
            <div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12">
					<img src="yamifood/images/Capture1.png" alt="" class="img-fluid" width="500" height="500" />
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>Become a supplier</h1>
						<p>You can reach more customers by selling your products in our store. </p>
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Apply now</a>
					</div>
				</div>
			</div>
            <br />
            <div class="row">
				
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>Become a courier</h1>
						<p>Deliver with your van or motorbike and earn extra cash</p>
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Apply now</a>
					</div>
				</div>
                <div class="col-lg-6 col-md-6 col-sm-12">
					<img src="yamifood/images/Capture2.png" alt="" class="img-fluid" width="500" height="500" />
				</div>
			</div>
		</div>
	</div>
	<!-- End About -->
	

	


</asp:Content>


