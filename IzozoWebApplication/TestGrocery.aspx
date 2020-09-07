<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TestGrocery.aspx.cs" Inherits="TestGrocery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
</asp:Content>

