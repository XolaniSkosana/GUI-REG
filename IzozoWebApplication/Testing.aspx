
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Testing.aspx.cs" Inherits="Testing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <style>
div.scrollmenu {
  /*background-color: #333;*/
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
  background-color: #777;
}
</style>
	
 <!-- Start Gallery -->
	<div class="gallery-box">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Choose your takeaway outlet</h2>
					</div>
				</div>
			</div>

			<!--search-->
				<link rel="stylesheet" type="text/css" href="searchbar.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome.min.css" />

	<div class="main">
		<input type="text" name="box" placeholder="Search anything you want" />
		<div class="btn">
			<a href="#"><i class="fa fa-search"></i></a>
		</div>
	</div>

<%--			<div class="tz-gallery">
				<div class="row">
					
    <table style="width: 100%;">
        <tr>
            <td class="col-sm-6 col-md-4 col-lg-4">&nbsp;<a class="lightbox" href="yamifood/images/Grillos1.PNG">
							<img class="img-fluid" src="yamifood/images/Grillos1.PNG" alt="Gallery Images" >
						</a></td>
            <td class="col-sm-6 col-md-4 col-lg-4">&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/images/Papas.PNG">
							<img class="img-fluid" src="yamifood/images/Papas.PNG" alt="Gallery Images">
						</a></td>
            <td class="col-sm-6 col-md-4 col-lg-4">&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/images/gallery-img-03.jpg">
							<img class="img-fluid" src="yamifood/images/T-Junction.PNG" alt="Gallery Images">
						</a></td>
			<td class="col-sm-6 col-md-4 col-lg-4">&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/images/TnT.PNG">
							<img class="img-fluid" src="yamifood/images/TnT.PNG" alt="Gallery Images">
						</a></td>
			<td class="col-sm-6 col-md-4 col-lg-4">&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/images/gallery-img-05.jpg">
							<img class="img-fluid" src="yamifood/images/Papas.PNG" alt="Gallery Images">
						</a></td>
			
        </tr>
      
    </table>

					
					
				</div>
			</div>
		</div>
	</div>
	<!-- End Gallery -->--%>
	<div class=" scrollmenu">
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;<a class="lightbox" href="yamifood/images/Grillos1.PNG">
							<img class="img-fluid" src="yamifood/images/Grillos1.PNG" alt="Gallery Images" >
						</a></td>
            <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/images/Papas.PNG">
							<img class="img-fluid" src="yamifood/images/Papas.PNG" alt="Gallery Images">
						</a></td>
            <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/images/gallery-img-03.jpg">
							<img class="img-fluid" src="yamifood/images/T-Junction.PNG" alt="Gallery Images">
						</a></td>
			<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/images/TnT.PNG">
							<img class="img-fluid" src="yamifood/images/TnT.PNG" alt="Gallery Images">
						</a></td>
			<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/images/gallery-img-05.jpg">
							<img class="img-fluid" src="yamifood/images/Papas.PNG" alt="Gallery Images">
						</a></td>
			
        </tr>
      
    </table>
</div>
</asp:Content>

