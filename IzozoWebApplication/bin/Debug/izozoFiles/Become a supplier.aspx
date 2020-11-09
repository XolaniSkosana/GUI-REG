<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Become a supplier.aspx.cs" Inherits="Become_a_supplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h3>SIGN UP TO INCREASE YOUR SALES</h3>
                    <asp:Button ID="Button1" CssClass="btn1" runat="server" Text="Sign up" />
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
<br />
<div>
   <div class="container2">
<div class="col-lg-12">
	<div class="heading-title text-center">
		<h2>WHY SIGN UP</h2>
	</div>
</div>
   <div class="holdingcontainer">
      <div class="internalcontainnerL">
        <img src="yamifood/images/Capture8.png" width="300px" height="300px"  alt="" />
        <h2>Reach more customers</h2>
         <p>Our online store has many visitors, make sure they see your products.</p>
      </div>
      <div class="internalcontainnerR">
        <img src="yamifood/images/Capture9.png"width="300px" height="300px"  alt="" />
        <h2>Sell more products</h2>
         <p>Customers will see your products whenever we advertise our store all the time everywhere.</p>
      </div>
      <div class="internalcontainnerML">
         <img src="yamifood/images/Capture10.png" width="300px" height="300px" alt="" />
         <h2>Free marketing</h2>
         <p>You can expand your product list without worrying about space.</p>
      </div>
      <div class="internalcontainnerMR">
         <img src="yamifood/images/Capture12.png" width="300px" height="300px" alt="" />
         <h2>We deliver</h2>
        <p> Our drivers will ensure that your products safely reach your customers.</p>
      </div>
   </div>
            <br />
       <h1>You won’t regret, get started!</h1>
       <center>
       <asp:Button CssClass="btn1" runat="server" Text="Sign up" />
       </center>
		</div>
</div>
    <br />
    <br />
    <br />
<div class="col-lg-12">
	<div class="heading-title text-center">
		<h2>OUR SUPPLIERS</h2>
	</div>
</div>
    <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="images/Papas.PNG">
							<!--<img style="border:solid; border-color:black" class="img-fluid" src="yamifood/images/Papas.PNG" alt="Gallery Images" >-->
							<asp:ImageButton class="img-fluid" ID="papas_img" runat="server" ImageUrl="yamifood/images/Papas.PNG" />
							<h3 style="color:black; font-weight:bold;">Papas</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="images/Grillos1.PNG">
							<!--<img class="img-fluid" src="yamifood/images/Grillos1.PNG" alt="Gallery Images">-->
							<asp:ImageButton class="img-fluid" ID="grillos_img" runat="server" ImageUrl="yamifood/images/Grillos1.PNG" />
							<h3 style="color:black; font-weight:bold">Grillos</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="images/TnT.PNG">
							
							<asp:ImageButton class="img-fluid" ID="tnt_img" runat="server" ImageUrl="yamifood/images/TnT.PNG" />
							<h3 style="color:black; font-weight:bold">TnT</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="images/T-junction.PNG">
							<%--<img class="img-fluid" src="yamifood/images/T-junction.PNG" alt="Gallery Images">--%>
							<asp:ImageButton class="img-fluid" ID="tjunc_img" runat="server" ImageUrl="yamifood/images/T-junction.PNG" />
							<h3 style="color:black; font-weight:bold">T-junction</h3>
						</a></td>
						
					</tr>
				</table>
      </div>
    <br />
    <br />



</asp:Content>

