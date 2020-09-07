<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestLogin2.aspx.cs" Inherits="TestLogin2" %>

<!DOCTYPE html>
<html lang="en"><!-- Basic -->
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Yamifood Restaurant - Responsive HTML5 Template</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="yamifood/css/bootstrap.min.css">    
	<!-- Site CSS -->
    <link rel="stylesheet" href="yamifood/css/style.css">    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="yamifood/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="yamifood/css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="index.html">
					<img src="/yamifood/images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
						<li class="nav-item active"><a class="nav-link" href="menu.html">Menu</a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Pages</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="reservation.html">Reservation</a>
								<a class="dropdown-item" href="stuff.html">Stuff</a>
								<a class="dropdown-item" href="gallery.html">Gallery</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Blog</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="blog.html">blog</a>
								<a class="dropdown-item" href="blog-details.html">blog Single</a>
							</div>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	
	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Special Menu</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	
	<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Special Menu</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
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
	<!-- End Menu -->

	
	 <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

	<!-- ALL JS FILES -->
	<script src="yamifood/js/jquery-3.2.1.min.js"></script>
	<script src="yamifood/js/popper.min.js"></script>
	<script src="yamifood/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	<script src="yamifood/js/jquery.superslides.min.js"></script>
	<script src="yamifood/js/images-loded.min.js"></script>
	<script src="yamifood/js/isotope.min.js"></script>
	<script src="yamifood/js/baguetteBox.min.js"></script>
	<script src="yamifood/js/form-validator.min.js"></script>
    <script src="yamifood/js/contact-form-script.js"></script>
    <script src="yamifood/js/custom.js"></script>
</body>
</html>
 