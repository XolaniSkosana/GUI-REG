<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="filterTest2.aspx.cs" Inherits="filterTest2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	
	<style>
	 .filterButton{
		 background-color:white;
		 font:15px;
	 }
	 .filterButton:hover{
		 background-color:tan;
		 opacity:0.9;
	 }
	</style>


    <div class="row">
				<div class="col-lg-12">
					<div class="special-menu text-center">
						<div class="button-group filter-button-group">
						

                                 
						</div>
					</div>
				</div>
			</div>
	<div class="row special-list">
		<asp:Panel ID="fruitsPanel" runat="server">
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
                        <asp:Image ID="Image1" ImageUrl="~/yamifood/grocery/green-apples.jpg" runat="server" />
						<div class="why-text">
							<h4>Apples</h4>
							<h5> R23.80</h5>
							<asp:Button CssClass="myButton" ID="Button10" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image2" ImageUrl="~/yamifood/grocery/banana.jpg" runat="server" />
						<div class="why-text">
							<h4>Bananas</h4>
							<h5> R27.80</h5>
							<asp:Button CssClass="myButton" ID="appleButton" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
							
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image3" ImageUrl="~/yamifood/grocery/pineapple.jpg" runat="server" />
						<div class="why-text">
							<h4>Oranges</h4>
							<h5> R55.80</h5>
							<asp:Button CssClass="myButton" ID="Button11" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
		</asp:Panel>


		<asp:Panel ID="vegetabalesPanel" runat="server">
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
                        <asp:Image ID="Image4" ImageUrl="~/yamifood/grocery/green-cabbage.jpg" runat="server" />
						<div class="why-text">
							<h4>Apples</h4>
							<h5> R23.80</h5>
							<asp:Button CssClass="myButton" ID="Button5" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image5" ImageUrl="~/yamifood/grocery/spinach-bunch.jpg" runat="server" />
						<div class="why-text">
							<h4>Bananas</h4>
							<h5> R27.80</h5>
							<asp:Button CssClass="myButton" ID="Button6" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
							
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image6" ImageUrl="~/yamifood/grocery/potatoesjpg.jpg" runat="server" />
						<div class="why-text">
							<h4>Oranges</h4>
							<h5> R55.80</h5>
							<asp:Button CssClass="myButton" ID="Button7" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
		</asp:Panel>

		<asp:Panel ID="bakeryPanel" runat="server">
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
                        <asp:Image ID="Image7" ImageUrl="~/yamifood/grocery/cake.jpg" runat="server" />
						<div class="why-text">
							<h4>Apples</h4>
							<h5> R23.80</h5>
							<asp:Button CssClass="myButton" ID="Button13" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image8" ImageUrl="~/yamifood/grocery/bread.jpg" runat="server" />
						<div class="why-text">
							<h4>Bananas</h4>
							<h5> R27.80</h5>
							<asp:Button CssClass="myButton" ID="Button14" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
							
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image9" ImageUrl="~/yamifood/grocery/muffins.jpg" runat="server" />
						<div class="why-text">
							<h4>Oranges</h4>
							<h5> R55.80</h5>
							<asp:Button CssClass="myButton" ID="Button15" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
		</asp:Panel>
		<asp:Panel ID="groceryPanel" runat="server">
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
                        <asp:Image ID="Image10" ImageUrl="~/yamifood/grocery/jik.jpg" runat="server" />
						<div class="why-text">
							<h4>Apples</h4>
							<h5> R23.80</h5>
							<asp:Button CssClass="myButton" ID="Button16" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image11" ImageUrl="~/yamifood/grocery/cooking-oil.jpg" runat="server" />
						<div class="why-text">
							<h4>Bananas</h4>
							<h5> R27.80</h5>
							<asp:Button CssClass="myButton" ID="Button17" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
							
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image12" ImageUrl="~/yamifood/grocery/honey.jpg" runat="server" />
						<div class="why-text">
							<h4>Oranges</h4>
							<h5> R55.80</h5>
							<asp:Button CssClass="myButton" ID="Button18" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
		</asp:Panel>
		<asp:Panel ID="beveragesPanel" runat="server">
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
                        <asp:Image ID="Image13" ImageUrl="~/yamifood/grocery/wine.jpg" runat="server" />
						<div class="why-text">
							<h4>Apples</h4>
							<h5> R23.80</h5>
							<asp:Button CssClass="myButton" ID="Button19" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image14" ImageUrl="~/yamifood/grocery/fruit-juice.jpg" runat="server" />
						<div class="why-text">
							<h4>Bananas</h4>
							<h5> R27.80</h5>
							<asp:Button CssClass="myButton" ID="Button20" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
							
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image15" ImageUrl="~/yamifood/grocery/fanta-grape.jpg" runat="server" />
						<div class="why-text">
							<h4>Oranges</h4>
							<h5> R55.80</h5>
							<asp:Button CssClass="myButton" ID="Button21" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
		</asp:Panel>
		<asp:Panel ID="eggdairyPanel" runat="server">
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
                        <asp:Image ID="Image16" ImageUrl="~/yamifood/grocery/cheese.jpg" runat="server" />
						<div class="why-text">
							<h4>Apples</h4>
							<h5> R23.80</h5>
							<asp:Button CssClass="myButton" ID="Button22" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image17" ImageUrl="~/yamifood/grocery/milk.jpg" runat="server" />
						<div class="why-text">
							<h4>Bananas</h4>
							<h5> R27.80</h5>
							<asp:Button CssClass="myButton" ID="Button23" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx"/>
							
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid fruits">
					<div class="gallery-single fix">
						<asp:Image ID="Image18" ImageUrl="~/yamifood/grocery/eggs.jpg" runat="server" />
						<div class="why-text">
							<h4>Oranges</h4>
							<h5> R55.80</h5>
							<asp:Button CssClass="myButton" ID="Button24" runat="server" Text="View" BorderStyle="Solid" BorderColor="Black" width="100" BackColor="Tan" PostBackUrl="~/product.aspx" />
						</div>
					</div>
				</div>
		</asp:Panel>
	</div>
</asp:Content>

