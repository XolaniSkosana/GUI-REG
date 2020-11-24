<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--<link rel="stylesheet" href="myStyle.css" />-->
    <link rel="stylesheet" href="yamifood/css/custom.css" />



<!-----------------------------------------------------Style------------------------------------------------------------------------------>
<style>
   body{
       font-family:'Athiti', sans-serif;
   }
    /*Style for Tabs*/
.pc-tab > input,
.pc-tab section > div {
    display: none;
}

#tab1:checked ~ section .tab1,
#tab2:checked ~ section .tab2,
#tab3:checked ~ section .tab3 {
    display: block;
}

*, *:after, *:before {
    box-sizing: border-box;
}
h1 {
    text-align: center;
    font-size: 30px;
    color: black;
   font-weight:900;
    letter-spacing: 0.5px;
    text-transform:uppercase;
}
.h3{
    font-weight:normal;
    font-size:16px;
}

.pc-tab {
    width: 100%;
    max-width: 700px;
    margin: 0 auto;
}

    .pc-tab ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
    }

        .pc-tab ul li label {
            float: left;
            padding: 15px 25px;
            border: 1px solid #ddd;
            border-bottom: 0;
            background-color: #eeeeee;
            color: #444;
        }

            .pc-tab ul li label:hover {
                background-color: #ddd;
                cursor: pointer;
            }

        .pc-tab ul li:not(:last-child) label {
            border-right-width: 0;
        }

    .pc-tab section {
        clear: both;
    }

        .pc-tab section div {
            padding: 20px;
            width: 100%;
            border: 1px solid #ddd;
            background-color: #fff;
            line-height: 1.5em;
            letter-spacing: 0.5px;
            color: #444;
        }

            .pc-tab section div h2 {
                margin: 0;
                letter-spacing: 1px;
                color: #34495e;
            }

#tab1:checked ~ nav .tab1 label,
#tab2:checked ~ nav .tab2 label,
#tab3:checked ~ nav .tab3 label {
    background-color: #fff;
    color: #111;
    position: relative;
}

    #tab1:checked ~ nav .tab1 label:after,
    #tab2:checked ~ nav .tab2 label:after,
    #tab3:checked ~ nav .tab3 label:after {
        content: "";
        display: block;
        position: absolute;
        height: 2px;
        width: 100%;
        background-color: #fff;
        color: rgba(0,0,0,0.3);
        left: 0;
        bottom: -1px;
    }
/*End of tab Style*/

/*Start product and it's info style*/
    .SScontainer{
        margin:0 0 0 200px;
        margin-top: 50px;
        position: relative;
        width:30%;
        height:0;
        padding-bottom:20%;
        background:#4c4c4c;
        border:solid 0px #2c2c2c;
        float:left;
    }
    .Scontainer{
        margin:0 0 80px 100px;
        margin-top: 50px;
        position: relative;
        width:30%;
        height:0;
        padding-bottom:20%;
        border:solid 0px #2c2c2c;
        float:left;
        
    }
    .slide_img{
        position:absolute;
        width:100%;
        height:100%
    }
    .slide_img img{
        width:100%;
        height:100%;
    }
    #i1, #i2, #i3{
        display:none;
    }
    .pre, .nxt{
        font-size:40px; font-weight:900; color:white;text-align:center;
        width:12%;
        height:20%;
        position:absolute;
        background:tan;
        /*background:rgba(210,180,140,1);*/
        border-radius: 10%;
        cursor:pointer;
        
    }
    .pre{
        left:5px;
        top:40%;
        
    }
    .nxt{
        right:0;
        top:40%;
       
    }
    .pre:hover{
       background-color:black;

    }
    .nxt:hover{
        background-color:black
    }
    /*Next & previous buttons */
/*a {
   text-decoration: none;
   display: inline-block;
   padding: 20px;
   font-size: 35px;
   width: 40px;
   text-align: center;
}
.back:hover {
   background-color: #ddd;
   color: black;
}
.next:hover {
   background-color: rgb(121, 37, 133);
   color: white;
}
.back {
   border-radius: 50%;
   background-color: #acacac;
   color: black;
}
.next {
   border-radius: 50%;
   background-color: rgb(68, 30, 112);
   color: white;
}*/



    .nav{
        width:100%;
        height:11px;
        bottom:12%;
        position:absolute;
        text-align:center;
        z-index:99;
    }
    .dots{
        top:-5px;
        width:18px;
        height:18px;
        margin:0 4px;
        position:relative;
        border-radius:50%;
        display:inline-block;
        background:rgba(0,0,0,.6);
    }
    .slide_img{
        z-index:-1;
    }
    #i1:checked ~ #one,
    #i2:checked ~ #two,
    #i3:checked ~ #three{
        z-index:9;
    }
    #i1:checked ~ .nav #dot1,
    #i2:checked ~ .nav #dot2,
    #i3:checked ~ .nav #dot3{
        background:#fff;
        

    }
 /*My Style*/


    .quantity {
        border-style: none;
        
        width: 40px;
        height: 40px;
        text-align:center;
        background-color: white;
        color: black;
        font-size: 16px;
        display: inline-block
    }
    
  .quantityNo{
     border-style:solid;
     border-width:1px;
     width:40px;
     height:40px;
    
     background-color:white;
     color:black;
     font-size:16px;
     display:inline-block

 }
  .sizeButton{
      border-style: solid;
        border-width: 1px;
        width: 40px;
        height: 40px;
        
        background-color: white;
        color: black;
        font-size: 16px;
        display: inline-block
  }
  .sizeButton:hover{
    
    background-color:tan;
   font-size:12px;
      
  }
  .sizeButton:active{
    background-color:tan;
   font-size:12px;
  }
  
  /*End My style*/

  /*Rating stars*/
    .checked {
        color: red;
    }
  /*End rating stars style*/


  /*ScrollBar*/
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
  /*End ScrollBar*/

  /*resize items*/
  @media screen and (max-width:350px){
      .Scontainer{
          float:none;
      }
  }
  /*my Buttons*/
  .btnProduct{
      background-color:tan;
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
  

.btnpro-outline-new-white {
    color: #fff;
    background-color: transparent;
    background-image: none;
    border-color: #cfa671;
}
.btn-outline-new-white:hover {
    color:white;
    background-color:rgba(0,0,0,0.8);
      
    
    border:none;
}
.btn-outline-new-white:active{
	background-color:tan;
}
</style>

<!----------------------------------------------------Heading------------------------------------------------------------------------------>
<div class="all-page-title page-breadcrumb" style="font-family:'Athiti', sans-serif">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12" style="position:absolute; font-family: 'athiti', sans-serif; ">
					
					<h1 style="font-weight:900"><b>NEED MORE?</b></h1>
					<br />
					<asp:Button runat="server" ID="btnShopMore" CssClass="btnProduct btn-lg btn-circle btn-outline-new-white" Width="330"  Font-Size="larger" Text="Shop More"   />
				</div>
			</div>
		</div>
    </div>
<!-----------------------------------------------------Apples Panel (Done)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="ApplesPanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/green apples2.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/green-apples.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/red apples.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >APPLES</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R23.80" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button16" runat="server" Text="1.5kg" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button17" runat="server" Text="2kg" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button18" runat="server" Text="Box" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button19" runat="server" Text="-" BackColor="White" Width="100" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block"  /><asp:Button CssClass="quantityNo" ID="Button20" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button21" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br /><br />Apples are the ideal fruit to eat at any time, having a positive role in the achievement of nourish balance. Their skin may be green, yellow or reddish, and the meat taste ranges from a bitter to sweet flavour.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />6001243579826647</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br />Eat two apples a day (it is just a recommendation), it has been proven to boosts health of your heart by slashing high levels of cholesterol.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="appleReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="black" OnClick="appleReviewButton_Click" />
                <br /><br />

                <asp:Panel ID="appleReviewPanel1" runat="server">
                <asp:Label ID="Label7" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                
                <p><strong>This is my all-time favourite of the various Jokos. Simply delicious every time!</strong> 
                    Saskia(27/06/2019)
                </p>
                </asp:Panel>
                <br />
                <asp:Panel ID="reviewApplePanel" runat="server" Visible="false">
                   <asp:Label ID="Label8" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox4" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" width="500"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label10" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button1" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" />
                    </asp:Panel>
                </div>
               </div>
            </section>
<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>
        <div class="button-group filter-button-group">
           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/green apples2.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton21" runat="server" ImageUrl="~/yamifood/grocery/green apples2.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Green Apples</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/red apples.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton22" runat="server" ImageUrl="~/yamifood/grocery/red apples.jpg" />
							<h3 style="color:black; font-weight:bold">Red Apples</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/pears.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton23" runat="server" ImageUrl="~/yamifood/grocery/pears.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Pears</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/peaches.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton24" runat="server" ImageUrl="~/yamifood/grocery/peaches.jpg" />
							<h3 style="color:black; font-weight:bold">Peaches</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/plums.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton25" runat="server" ImageUrl="~/yamifood/grocery/plums.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Plums</h3>
						</a></td>
					    <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/apricots.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton30" runat="server" ImageUrl="~/yamifood/grocery/apricots.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Apricots</h3>
						</a></td>
					</tr>
				</table>
			</div>
    </div>
    <div>

    </div>

</div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
    <div class="button-group filter-button-group">
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/fruit-juice.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton27" runat="server" ImageUrl="~/yamifood/grocery/fruit-juice.jpg" Height="250" />
							<h3 style="color:black; font-weight:bold;">Fruit Juice</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/plain-yoghurt.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton28" runat="server" ImageUrl="~/yamifood/grocery/plain-yoghurt.jpg" />
							<h3 style="color:black; font-weight:bold">Plain Yoghurt</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton29" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/fruit-salad-dressing.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton26" runat="server" ImageUrl="~/yamifood/grocery/fruit-salad-dressing.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Fruit Salad Dressing</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
        </div>
    </asp:Panel>  
</div>
<!-----------------------------------------------------Bananas Panel (Done)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="BananasPanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/banana2.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/banana.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/banana3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;">BANANAS</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R27.80" ForeColor="#333333" ></asp:Label></h4></td>
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button24" runat="server" Text="1kg" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button25" runat="server" Text="2kg" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button26" runat="server" Text="Box" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button27" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button28" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button29" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br /><br />The banana is a lengthy yellow fruit, found in the market in groups of three to twenty fruits, similar to a triangular cucumber, oblong and normally yellow. Its flavour is more or less sweet, depending on the variety.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982356</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br />You can have up to 2 to 3 bananas in a day maximum. Banana consists of potassium, fiber, vitamin C. If you eat more bananas it aids in weight gain and high sugar<td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="bananaReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="bananaReviewButton_Click" />
                <br /><br />
                <asp:Panel ID="bananaReviewPanel1" runat="server">
                <asp:Label ID="Label12" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Toilet Papers. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                </asp:Panel>
                <br />
                <asp:Panel ID="bananaReviewPanel2" runat="server" Visible="false">
                <section >
                   <asp:Label ID="Label13" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox7" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" ></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label15" runat="server" Text="YOUR RATING" Font-Bold="true" ></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label16" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true" ></asp:Label><br />
                <asp:TextBox ID="TextBox9" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button31" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"  />
                    </section>
                    </asp:Panel>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/banana.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton33" runat="server" ImageUrl="~/yamifood/grocery/banana.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Bananas</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/pineapples.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton34" runat="server" ImageUrl="~/yamifood/grocery/pineapples.jpg" />
							<h3 style="color:black; font-weight:bold">Pineapples</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/peaches.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton35" runat="server" ImageUrl="~/yamifood/grocery/peaches.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Peaches</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/mango.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton36" runat="server" ImageUrl="~/yamifood/grocery/mango.jpg" />
							<h3 style="color:black; font-weight:bold">Mangos</h3>
						</a></td> 
					</tr>
				</table>
			</div>
    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/fruit-juice.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton31" runat="server" ImageUrl="~/yamifood/grocery/fruit-juice.jpg" Height="250" />
							<h3 style="color:black; font-weight:bold;">Fruit Juice</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/plain-yoghurt.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton32" runat="server" ImageUrl="~/yamifood/grocery/plain-yoghurt.jpg" />
							<h3 style="color:black; font-weight:bold">Plain Yoghurt</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton37" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/fruit-salad-dressing.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton38" runat="server" ImageUrl="~/yamifood/grocery/fruit-salad-dressing.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Fruit Salad Dressing</h3>
						</a></td>
                      
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Oranges Panel (Done)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="OrangesPanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/oranges.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/oranges2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/oranges3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >ORANGES</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R55.80" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button32" runat="server" Text="1kg" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button33" runat="server" Text="2kg" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button34" runat="server" Text="5kg" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button35" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button36" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button37" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />It is a round orange fruit, consumed mainly in winter. Its flesh is also orange and is formed by small bags full of juice.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br />Barcode:</td>
                        <td style="font-size:18px"><br />6001243579823345</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br /><br />Start by cutting it in half, straight down. Then, make two cuts to either side, angling your knife towards the center of the orange. Eat the orange directly from the peel. Place the flesh part of the orange into your mouth, with the peel between your lips like a big, orange smile.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="orangesReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="orangesReviewButton_Click"
                    />
                <br /><br />
                <asp:Panel ID="orangesReviewPanel1" runat="server">
                <asp:Label ID="Label17" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various fruits. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                </asp:Panel>
                <br />
                <asp:Panel ID="orangesReviewPanel2" Visible="false" runat="server" >
                <section >
                   <asp:Label ID="Label18" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox10" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label19" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox11" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label20" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label21" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox12" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button39" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" />
                    </section>
                    </asp:Panel>
            </div>
        </section>
        
    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/oranges.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton45" runat="server" ImageUrl="~/yamifood/grocery/oranges.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Oranges</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/lemonsjpg.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton46" runat="server" ImageUrl="~/yamifood/grocery/lemonsjpg.jpg" />
							<h3 style="color:black; font-weight:bold">Lemons</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/naartjies.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton47" runat="server" ImageUrl="~/yamifood/grocery/naartjies.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Naartjies</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/grapefruit.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton48" runat="server" ImageUrl="~/yamifood/grocery/grapefruit.jpg" />
							<h3 style="color:black; font-weight:bold">Grapefruit</h3>
						</a></td>
                    
                    
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
							<td>&nbsp;<a class="lightbox" href="yamifood/grocery/fruit-juice.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton39" runat="server" ImageUrl="~/yamifood/grocery/fruit-juice.jpg" Height="250" />
							<h3 style="color:black; font-weight:bold;">Fruit Juice</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/plain-yoghurt.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton40" runat="server" ImageUrl="~/yamifood/grocery/plain-yoghurt.jpg" />
							<h3 style="color:black; font-weight:bold">Plain Yoghurt</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton41" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/fruit-salad-dressing.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton42" runat="server" ImageUrl="~/yamifood/grocery/fruit-salad-dressing.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Fruit Salad Dressing</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>   
<!-----------------------------------------------------Pineapples Panel(Skipped)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="PineapplePanel" Visible="false" runat="server" >
<!--Start slideshow-->
<div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/pineapple.jpg" />

       <!--<a href="#" class="back">‹</a>
<a href="#" class="next">›</a>-->

    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cooking-oil.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/bread.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >PINEAPPLES</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R497.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="quantity" ID="Button40" runat="server" Text="S Box" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantityNo" ID="Button41" runat="server" Text="M Box" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantity" ID="Button42" runat="server" Text="L Box" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="quantity" ID="Button43" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button44" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantity" ID="Button45" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />A pineapple is a large oval fruit that grows in hot countries. It is sweet, juicy, and yellow inside, and it has a thick brownish skin.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />6001243579823987</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br />It is eaten raw or as an ingredient in juices, preserves, liquors, etc. Both the fruit and the leaves are used to prepare medicinal compounds.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="Button46" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="White" OnClick="Button1_Click" />
                <br /><br />
                <asp:Label ID="Label22" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various fruits. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                
                <br />
                <section >
                   <asp:Label ID="Label23" runat="server" Text="REVIEW TITLE" Font-Bold="true" Visible="false"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox13" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label24" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox14" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" Visible="false"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label25" runat="server" Text="YOUR RATING" Font-Bold="true" Visible="false"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label26" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox15" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button47" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="White" Visible="false" />
                    </section>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/images/pineapples.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton57" runat="server" ImageUrl="~/yamifood/grocery/pineapples.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Pineapples</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/apricots.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton58" runat="server" ImageUrl="~/yamifood/grocery/apricots.jpg" />
							<h3 style="color:black; font-weight:bold">Apricots</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/peaches.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton59" runat="server" ImageUrl="~/yamifood/grocery/peaches.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Peaches</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/oranges.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton60" runat="server" ImageUrl="~/yamifood/grocery/oranges.jpg" />
							<h3 style="color:black; font-weight:bold">Oranges</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/banana.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton61" runat="server" ImageUrl="~/yamifood/grocery/banana.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Bananas</h3>
						</a></td>
					</tr>
				</table>
			</div>
    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/fruit-juice.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton43" runat="server" ImageUrl="~/yamifood/grocery/fruit-juice.jpg" Height="250" />
							<h3 style="color:black; font-weight:bold;">Fruit Juice</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/plain-yoghurt.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton44" runat="server" ImageUrl="~/yamifood/grocery/plain-yoghurt.jpg" />
							<h3 style="color:black; font-weight:bold">Plain Yoghurt</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton49" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/fruit-salad-dressing.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton50" runat="server" ImageUrl="~/yamifood/grocery/fruit-salad-dressing.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Fruit Salad Dressing</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Avocados Panel(Skipped)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="AvocadosPanel" Visible="false" runat="server" >
<!--Start slideshow-->
<div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/avocados.jpg" />

       <!--<a href="#" class="back">‹</a>
<a href="#" class="next">›</a>-->

    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cooking-oil.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/bread.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >AVOCADOS</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R300.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="quantity" ID="Button48" runat="server" Text="60's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantityNo" ID="Button49" runat="server" Text="100's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantity" ID="Button50" runat="server" Text="120's" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="quantity" ID="Button51" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button52" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantity" ID="Button53" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Baby Soft Fresh White toilet tissue has special micro-pillow technology that gives it the perfect balance of softness and strength to leave you and your family feeling clean, fresh and confident.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982337</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br /> Each wipe leaves you feeling fresh and clean</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="Button54" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="White" OnClick="Button1_Click" />
                <br /><br />
                <asp:Label ID="Label27" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Toilet Papers. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                
                <br />
                <section >
                   <asp:Label ID="Label28" runat="server" Text="REVIEW TITLE" Font-Bold="true" Visible="false"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox16" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label29" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox17" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" Visible="false"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label30" runat="server" Text="YOUR RATING" Font-Bold="true" Visible="false"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label31" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox18" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button55" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="White" Visible="false" />
                    </section>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/images/joko.PNG">
							<asp:ImageButton class="img-fluid" ID="ImageButton69" runat="server" ImageUrl="~/yamifood/grocery/joko.PNG" Height="200" />
							<h3 style="color:black; font-weight:bold;">Joko</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/rooibos.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton70" runat="server" ImageUrl="~/yamifood/grocery/rooibos.jpg" />
							<h3 style="color:black; font-weight:bold">Rooibos</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/jacobs.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton71" runat="server" ImageUrl="~/yamifood/grocery/jacobs.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Jacobs</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/frisco.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton72" runat="server" ImageUrl="~/yamifood/grocery/frisco.jpg" />
							<h3 style="color:black; font-weight:bold">Frisco</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/douwe.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton73" runat="server" ImageUrl="~/yamifood/grocery/douwe.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Douwe</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/ricoffy.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton74" runat="server" ImageUrl="~/yamifood/grocery/ricoffy.jpg" />
							<h3 style="color:black; font-weight:bold">Nescafe</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/milk.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton75" runat="server" ImageUrl="~/yamifood/grocery/milk.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Milk</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/sugar.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton76" runat="server" ImageUrl="~/yamifood/grocery/sugar.jpg" />
							<h3 style="color:black; font-weight:bold">Sugar</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton77" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cremora.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton78" runat="server" ImageUrl="~/yamifood/grocery/cremora.jpg" />
							<h3 style="color:black; font-weight:bold">Cremora</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/bread.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton79" runat="server" ImageUrl="~/yamifood/grocery/bread.jpg"/>
							<h3 style="color:black; font-weight:bold">Bread</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton80" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Grapes Panel(Skipped)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="grapesPanel" Visible="false" runat="server" >
<!--Start slideshow-->
<div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/green-grapes.jpg" />

       <!--<a href="#" class="back">‹</a>
<a href="#" class="next">›</a>-->

    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cooking-oil.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/bread.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >Green Grape(s)</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R497.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="quantity" ID="Button56" runat="server" Text="60's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantityNo" ID="Button57" runat="server" Text="100's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantity" ID="Button58" runat="server" Text="120's" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="quantity" ID="Button59" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button60" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantity" ID="Button61" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Baby Soft Fresh White toilet tissue has special micro-pillow technology that gives it the perfect balance of softness and strength to leave you and your family feeling clean, fresh and confident.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982337</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br /> Each wipe leaves you feeling fresh and clean</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="Button62" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="White" OnClick="Button1_Click" />
                <br /><br />
                <asp:Label ID="Label32" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Toilet Papers. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                
                <br />
                <section >
                   <asp:Label ID="Label33" runat="server" Text="REVIEW TITLE" Font-Bold="true" Visible="false"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox19" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label34" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox20" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" Visible="false"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label35" runat="server" Text="YOUR RATING" Font-Bold="true" Visible="false"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label36" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox21" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button63" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="White" Visible="false" />
                    </section>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/images/joko.PNG">
							<asp:ImageButton class="img-fluid" ID="ImageButton81" runat="server" ImageUrl="~/yamifood/grocery/joko.PNG" Height="200" />
							<h3 style="color:black; font-weight:bold;">Joko</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/rooibos.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton82" runat="server" ImageUrl="~/yamifood/grocery/rooibos.jpg" />
							<h3 style="color:black; font-weight:bold">Rooibos</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/jacobs.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton83" runat="server" ImageUrl="~/yamifood/grocery/jacobs.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Jacobs</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/frisco.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton84" runat="server" ImageUrl="~/yamifood/grocery/frisco.jpg" />
							<h3 style="color:black; font-weight:bold">Frisco</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/douwe.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton85" runat="server" ImageUrl="~/yamifood/grocery/douwe.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Douwe</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/ricoffy.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton86" runat="server" ImageUrl="~/yamifood/grocery/ricoffy.jpg" />
							<h3 style="color:black; font-weight:bold">Nescafe</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/milk.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton87" runat="server" ImageUrl="~/yamifood/grocery/milk.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Milk</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/sugar.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton88" runat="server" ImageUrl="~/yamifood/grocery/sugar.jpg" />
							<h3 style="color:black; font-weight:bold">Sugar</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton89" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cremora.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton90" runat="server" ImageUrl="~/yamifood/grocery/cremora.jpg" />
							<h3 style="color:black; font-weight:bold">Cremora</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/bread.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton91" runat="server" ImageUrl="~/yamifood/grocery/bread.jpg"/>
							<h3 style="color:black; font-weight:bold">Bread</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton92" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Spinach Panel (Done)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="Spinach" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/spinach-bunch.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/spinach2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/spinach3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >SPINACH</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R8.50" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button64" runat="server" Text="S Bunch" BackColor="White" Width="90" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button65" runat="server" Text="M Bunch" BackColor="White" Width="90" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button66" runat="server" Text="L Bunch" BackColor="White" opacity="0.5" Width="90" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button67" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" OnClick="Button67_Click" /><asp:Button CssClass="quantityNo" ID="Button68" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button69" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute" OnClick="Button69_Click"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
<!------------------------------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >   
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>
                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li> 
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	                        <td style="font-size:18px"> <br /><br /><br />Spinach (Spinacia oleracea) is a herbaceous plant whose leaves, green and arranged in rosette. It is a very nutritious, tasteful and easy-to-digest plant. The Arabs regarded it as the queen of vegetables.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982923</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br /> Raw Spinach has folate, vitamin C, niacin, riboflavin, and potassium, cooking increases the vitamins A and E, protein, fiber, zinc, thiamin, calcium, and iron – as well as important carotenoids.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="spinachReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="spinachReviewButton_Click" />
                <br /><br />
                <asp:Panel ID="spinachReviewPanel1" Visible="true" runat="server">
                <asp:Label ID="Label37" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various vegetables. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                </asp:Panel>
                <br />
                <asp:Panel ID="spinachReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label38" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox22" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label39" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox23" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label40" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label41" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox24" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button71" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" />
                    </section>
                    </asp:Panel>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>
           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/spinach-bunch.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton93" runat="server" ImageUrl="~/yamifood/grocery/spinach-bunch.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Spinach</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/green-cabbage.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton94" runat="server" ImageUrl="~/yamifood/grocery/green-cabbage.jpg" />
							<h3 style="color:black; font-weight:bold">Cabbage</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/potatoesjpg.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton95" runat="server" ImageUrl="~/yamifood/grocery/potatoesjpg.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Potatoes</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/tomatoes.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton96" runat="server" ImageUrl="~/yamifood/grocery/tomatoes.jpg" />
							<h3 style="color:black; font-weight:bold">Tomatoes</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/pumpkin.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton97" runat="server" ImageUrl="~/yamifood/grocery/pumpkin.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Pumpkin</h3>
						</a></td>
					</tr>
				</table>
			</div>
    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/salt.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton99" runat="server" ImageUrl="~/yamifood/grocery/salt.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Salt</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/salad-dressing.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton100" runat="server" ImageUrl="~/yamifood/grocery/salad-dressing.jpg" />
							<h3 style="color:black; font-weight:bold">Salad Dressing</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/vegetable-spice.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton101" runat="server" ImageUrl="~/yamifood/grocery/vegetable-spice.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Vegetable Spice</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cooking-oil.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton102" runat="server" ImageUrl="~/yamifood/grocery/cooking-oil.jpg" />
							<h3 style="color:black; font-weight:bold">Cooking Oil</h3>
						</a></td>   
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Tomatoes Panel (Done)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="tomatoesPanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/tomatoes2.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/tomatoes.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/tomatoes3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information--> 
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
               <tr>
                    <td"><h2 style="text-align:left; font-weight:900;">TOMATOES</h2></td>
                
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R22.80" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button72" runat="server" Text="1kg" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button73" runat="server" Text="2kg" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button74" runat="server" Text="Box" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button75" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button76" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button77" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Tomatoes are labelled as a vegetables for nutritional purposes, they are a good source of vitamin C and the phytochemical lycopene.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982637</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br />The fruits are commonly eaten raw in salads, served as a cooked vegetable, used as an ingredient of various prepared dishes, and pickled.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="tomatoesReviewButton1" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="tomatoesReviewButton1_Click" />
                <br /><br />
                <asp:Panel ID="tomatoesReviewPanel1" runat="server">
                <asp:Label ID="Label42" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various vegetables. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                </asp:Panel>
                <br />
                <asp:Panel ID="tomatoesReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label43" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox25" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label44" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox26" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label45" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label46" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox27" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button79" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" />
                    </section>
                    </asp:Panel>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/tomatoes.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton65" runat="server" ImageUrl="~/yamifood/grocery/tomatoes.jpg" />
							<h3 style="color:black; font-weight:bold">Tomatoes</h3>
						</a></td>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/spinach-bunch.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton55" runat="server" ImageUrl="~/yamifood/grocery/spinach-bunch.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Spinach</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/green-cabbage.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton56" runat="server" ImageUrl="~/yamifood/grocery/green-cabbage.jpg" />
							<h3 style="color:black; font-weight:bold">Cabbage</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/potatoesjpg.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton62" runat="server" ImageUrl="~/yamifood/grocery/potatoesjpg.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Potatoes</h3>
						</a></td>

                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/pumpkin.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton64" runat="server" ImageUrl="~/yamifood/grocery/pumpkin.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Pumpkin</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/salt.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton51" runat="server" ImageUrl="~/yamifood/grocery/salt.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Salt</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/salad-dressing.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton52" runat="server" ImageUrl="~/yamifood/grocery/salad-dressing.jpg" />
							<h3 style="color:black; font-weight:bold">Salad Dressing</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/vegetable-spice.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton53" runat="server" ImageUrl="~/yamifood/grocery/vegetable-spice.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Vegetable Spice</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cooking-oil.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton54" runat="server" ImageUrl="~/yamifood/grocery/cooking-oil.jpg" />
							<h3 style="color:black; font-weight:bold">Cooking Oil</h3>
						</a></td>   
		
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Cabbage Panel (Done)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="cabbagePanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/green-cabbage.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cabbage2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/cabbage3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >CABBAGE</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R10.50" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button80" runat="server" Text="S" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button81" runat="server" Text="M" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button82" runat="server" Text="L" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button83" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button84" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button85" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Green cabbage has numerous pale green leaves that are thick and broad with prominent veins and a slightly waxy finish. </td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357987637</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br />Cabbage is cooked as a green vegetable, eaten raw, and frequently preserved as in sauerkraut or pickle. It is rich in vitamin C and high in minerals and proteins.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="cabbageReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="cabbageReviewButton_Click" />
                <br /><br />
                <asp:Panel ID="cabbageReviewPanel1" runat="server">
                <asp:Label ID="Label47" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various vegetables. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                </asp:Panel>
                <br />
            <asp:Panel ID="cabbageReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label48" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox28" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label49" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox29" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label50" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label51" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox30" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button87" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" />
                    </section>
                </asp:Panel>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/green-cabbage.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton117" runat="server" ImageUrl="~/yamifood/grocery/green-cabbage.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Cabbage</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/spinach-bunch.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton118" runat="server" ImageUrl="~/yamifood/grocery/spinach-bunch.jpg" />
							<h3 style="color:black; font-weight:bold">Spinach</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/potatoesjpg.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton119" runat="server" ImageUrl="~/yamifood/grocery/potatoesjpg.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Potatoes</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/pumpkin.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton120" runat="server" ImageUrl="~/yamifood/grocery/pumpkin.jpg" />
							<h3 style="color:black; font-weight:bold">Pumpkin</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/tomatoes.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton121" runat="server" ImageUrl="~/yamifood/grocery/tomatoes.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Tomatoes</h3>
						</a></td>
						
                      
					</tr>
				</table>
			</div>
    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/salt.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton63" runat="server" ImageUrl="~/yamifood/grocery/salt.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Salt</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/salad-dressing.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton66" runat="server" ImageUrl="~/yamifood/grocery/salad-dressing.jpg" />
							<h3 style="color:black; font-weight:bold">Salad Dressing</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/vegetable-spice.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton67" runat="server" ImageUrl="~/yamifood/grocery/vegetable-spice.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Vegetable Spice</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cooking-oil.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton68" runat="server" ImageUrl="~/yamifood/grocery/cooking-oil.jpg" />
							<h3 style="color:black; font-weight:bold">Cooking Oil</h3>
						</a></td>   
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Pumpkin Panel(Skipped)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="pumpkinPanel" Visible="false" runat="server" >
<!--Start slideshow-->
<div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/pumpkin.jpg" />

       <!--<a href="#" class="back">‹</a>
<a href="#" class="next">›</a>-->

    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cooking-oil.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/bread.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >Pumpkin</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R497.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="quantity" ID="Button88" runat="server" Text="60's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantityNo" ID="Button89" runat="server" Text="100's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantity" ID="Button90" runat="server" Text="120's" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="quantity" ID="Button91" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button92" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantity" ID="Button93" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Baby Soft Fresh White toilet tissue has special micro-pillow technology that gives it the perfect balance of softness and strength to leave you and your family feeling clean, fresh and confident.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982337</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br /> Each wipe leaves you feeling fresh and clean</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="Button94" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="White" OnClick="Button1_Click" />
                <br /><br />
                <asp:Label ID="Label52" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Toilet Papers. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                
                <br />
                <section >
                   <asp:Label ID="Label53" runat="server" Text="REVIEW TITLE" Font-Bold="true" Visible="false"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox31" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label54" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox32" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" Visible="false"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label55" runat="server" Text="YOUR RATING" Font-Bold="true" Visible="false"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label56" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox33" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button95" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="White" Visible="false" />
                    </section>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/images/joko.PNG">
							<asp:ImageButton class="img-fluid" ID="ImageButton129" runat="server" ImageUrl="~/yamifood/grocery/joko.PNG" Height="200" />
							<h3 style="color:black; font-weight:bold;">Joko</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/rooibos.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton130" runat="server" ImageUrl="~/yamifood/grocery/rooibos.jpg" />
							<h3 style="color:black; font-weight:bold">Rooibos</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/jacobs.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton131" runat="server" ImageUrl="~/yamifood/grocery/jacobs.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Jacobs</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/frisco.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton132" runat="server" ImageUrl="~/yamifood/grocery/frisco.jpg" />
							<h3 style="color:black; font-weight:bold">Frisco</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/douwe.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton133" runat="server" ImageUrl="~/yamifood/grocery/douwe.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Douwe</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/ricoffy.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton134" runat="server" ImageUrl="~/yamifood/grocery/ricoffy.jpg" />
							<h3 style="color:black; font-weight:bold">Nescafe</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/milk.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton135" runat="server" ImageUrl="~/yamifood/grocery/milk.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Milk</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/sugar.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton136" runat="server" ImageUrl="~/yamifood/grocery/sugar.jpg" />
							<h3 style="color:black; font-weight:bold">Sugar</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton137" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cremora.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton138" runat="server" ImageUrl="~/yamifood/grocery/cremora.jpg" />
							<h3 style="color:black; font-weight:bold">Cremora</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/bread.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton139" runat="server" ImageUrl="~/yamifood/grocery/bread.jpg"/>
							<h3 style="color:black; font-weight:bold">Bread</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton140" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Potatoes Panel(Skipped)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="potatoesPanel" Visible="false" runat="server" >
<!--Start slideshow-->
<div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/potatoesjpg.jpg" />

       <!--<a href="#" class="back">‹</a>
<a href="#" class="next">›</a>-->

    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cooking-oil.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/bread.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td id="toiletPaper"><h2 style="text-align:left; font-weight:900;" >Potatoes</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R497.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="quantity" ID="Button96" runat="server" Text="60's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantityNo" ID="Button97" runat="server" Text="100's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantity" ID="Button98" runat="server" Text="120's" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="quantity" ID="Button99" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button100" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantity" ID="Button101" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Baby Soft Fresh White toilet tissue has special micro-pillow technology that gives it the perfect balance of softness and strength to leave you and your family feeling clean, fresh and confident.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982337</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br /> Each wipe leaves you feeling fresh and clean</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="Button102" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="White" OnClick="Button1_Click" />
                <br /><br />
                <asp:Label ID="Label57" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Toilet Papers. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                
                <br />
                <section >
                   <asp:Label ID="Label58" runat="server" Text="REVIEW TITLE" Font-Bold="true" Visible="false"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox34" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label59" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox35" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" Visible="false"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label60" runat="server" Text="YOUR RATING" Font-Bold="true" Visible="false"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label61" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox36" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button103" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="White" Visible="false" />
                    </section>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/images/joko.PNG">
							<asp:ImageButton class="img-fluid" ID="ImageButton141" runat="server" ImageUrl="~/yamifood/grocery/joko.PNG" Height="200" />
							<h3 style="color:black; font-weight:bold;">Joko</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/rooibos.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton142" runat="server" ImageUrl="~/yamifood/grocery/rooibos.jpg" />
							<h3 style="color:black; font-weight:bold">Rooibos</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/jacobs.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton143" runat="server" ImageUrl="~/yamifood/grocery/jacobs.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Jacobs</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/frisco.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton144" runat="server" ImageUrl="~/yamifood/grocery/frisco.jpg" />
							<h3 style="color:black; font-weight:bold">Frisco</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/douwe.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton145" runat="server" ImageUrl="~/yamifood/grocery/douwe.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Douwe</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/ricoffy.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton146" runat="server" ImageUrl="~/yamifood/grocery/ricoffy.jpg" />
							<h3 style="color:black; font-weight:bold">Nescafe</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/milk.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton147" runat="server" ImageUrl="~/yamifood/grocery/milk.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Milk</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/sugar.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton148" runat="server" ImageUrl="~/yamifood/grocery/sugar.jpg" />
							<h3 style="color:black; font-weight:bold">Sugar</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton149" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cremora.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton150" runat="server" ImageUrl="~/yamifood/grocery/cremora.jpg" />
							<h3 style="color:black; font-weight:bold">Cremora</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/bread.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton151" runat="server" ImageUrl="~/yamifood/grocery/bread.jpg"/>
							<h3 style="color:black; font-weight:bold">Bread</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton152" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Onions Panel(Skipped)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="onionsPanel" Visible="false" runat="server" >
<!--Start slideshow-->
<div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/onions.jpg" />

       <!--<a href="#" class="back">‹</a>
<a href="#" class="next">›</a>-->

    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cooking-oil.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/bread.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td id="toiletPaper"><h2 style="text-align:left; font-weight:900;" >Onions</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R497.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="quantity" ID="Button104" runat="server" Text="60's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantityNo" ID="Button105" runat="server" Text="100's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantity" ID="Button106" runat="server" Text="120's" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="quantity" ID="Button107" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button108" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantity" ID="Button109" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Baby Soft Fresh White toilet tissue has special micro-pillow technology that gives it the perfect balance of softness and strength to leave you and your family feeling clean, fresh and confident.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982337</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br /> Each wipe leaves you feeling fresh and clean</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="Button110" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="White" OnClick="Button1_Click" />
                <br /><br />
                <asp:Label ID="Label62" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Toilet Papers. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                
                <br />
                <section >
                   <asp:Label ID="Label63" runat="server" Text="REVIEW TITLE" Font-Bold="true" Visible="false"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox37" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label64" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox38" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" Visible="false"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label65" runat="server" Text="YOUR RATING" Font-Bold="true" Visible="false"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label66" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox39" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button111" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="White" Visible="false" />
                    </section>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/images/joko.PNG">
							<asp:ImageButton class="img-fluid" ID="ImageButton153" runat="server" ImageUrl="~/yamifood/grocery/joko.PNG" Height="200" />
							<h3 style="color:black; font-weight:bold;">Joko</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/rooibos.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton154" runat="server" ImageUrl="~/yamifood/grocery/rooibos.jpg" />
							<h3 style="color:black; font-weight:bold">Rooibos</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/jacobs.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton155" runat="server" ImageUrl="~/yamifood/grocery/jacobs.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Jacobs</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/frisco.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton156" runat="server" ImageUrl="~/yamifood/grocery/frisco.jpg" />
							<h3 style="color:black; font-weight:bold">Frisco</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/douwe.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton157" runat="server" ImageUrl="~/yamifood/grocery/douwe.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Douwe</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/ricoffy.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton158" runat="server" ImageUrl="~/yamifood/grocery/ricoffy.jpg" />
							<h3 style="color:black; font-weight:bold">Nescafe</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/milk.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton159" runat="server" ImageUrl="~/yamifood/grocery/milk.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Milk</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/sugar.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton160" runat="server" ImageUrl="~/yamifood/grocery/sugar.jpg" />
							<h3 style="color:black; font-weight:bold">Sugar</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton161" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cremora.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton162" runat="server" ImageUrl="~/yamifood/grocery/cremora.jpg" />
							<h3 style="color:black; font-weight:bold">Cremora</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/bread.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton163" runat="server" ImageUrl="~/yamifood/grocery/bread.jpg"/>
							<h3 style="color:black; font-weight:bold">Bread</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton164" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Cake Panel (Done)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="cakePanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/cake3.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cake2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/cake.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >CAKE</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R79.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button112" runat="server" Text="S" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button113" runat="server" Text="M" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button114" runat="server" Text="L" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button115" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button116" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button117" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Cake is a triumph of sugar and flour, towering with buttercream and strawberries to bring it that celebratory colour and freshness.</td>
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357986637</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br />  Cake is often served as a celebratory dish on ceremonial occasions, such as weddings, anniversaries, and birthdays.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="cakeReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="cakeReviewButton_Click" />
                <br /><br />
                <asp:Panel ID="cakeReviewPanel1" runat="server">
                
                <asp:Label ID="Label67" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various cakes. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                </asp:Panel>
                <br />
                <asp:Panel ID="cakeReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label68" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox40" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label69" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox41" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label70" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label71" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true" ></asp:Label><br />
                <asp:TextBox ID="TextBox42" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" ></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button119" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" />
                    </section>
                    </asp:Panel>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/images/cake.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton165" runat="server" ImageUrl="~/yamifood/grocery/cake.jpg" Height="300" />
							<h3 style="color:black; font-weight:bold;">Cake</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cookies.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton166" runat="server" ImageUrl="~/yamifood/grocery/cookies.jpg" />
							<h3 style="color:black; font-weight:bold">Cookies</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton167" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/donuts.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton168" runat="server" ImageUrl="~/yamifood/grocery/donuts.jpg" />
							<h3 style="color:black; font-weight:bold">Donuts</h3>
						</a></td>
                        
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/chocolateSouce.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton171" runat="server" ImageUrl="~/yamifood/grocery/chocolateSouce.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Chocolate Souce</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/berries.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton172" runat="server" ImageUrl="~/yamifood/grocery/berries.jpg" />
							<h3 style="color:black; font-weight:bold">Berries</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/blueberries.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton173" runat="server" ImageUrl="~/yamifood/grocery/blueberries.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Blueberries</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/strawberries.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton174" runat="server" ImageUrl="~/yamifood/grocery/strawberries.jpg" />
							<h3 style="color:black; font-weight:bold">Strawberries</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/ice-cream.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton175" runat="server" ImageUrl="~/yamifood/grocery/ice-cream.jpg"/>
							<h3 style="color:black; font-weight:bold">Ice-cream</h3>
						</a></td>
						
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Bread Panel------------------------------------------------------------------------------>
<div>
<asp:Panel ID="breadPanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/bread.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/bread2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/bread3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >BREAD</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R15.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button120" runat="server" Text="Loaf" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button123" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button124" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button125" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /> Albany bread is super fresh and super soft, packed with love.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357999337</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br />If it's health you're after, you can have your high-fibre, wholegrain bread and eat it too.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="breadReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="breadReviewButton_Click" />
                <br /><br />
                <asp:Panel ID="breadReviewPanel1" runat="server">
                <asp:Label ID="Label72" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Bread. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                </asp:Panel>
                <br />
                <asp:Panel ID="breadReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label73" runat="server" Text="REVIEW TITLE" Font-Bold="true" ></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox43" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label74" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox44" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label75" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label76" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox45" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button127" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" />
                    </section>
                    </asp:Panel>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/buns.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton177" runat="server" ImageUrl="~/yamifood/grocery/buns.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Buns</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/burgerBuns.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton178" runat="server" ImageUrl="~/yamifood/grocery/burgerBuns.jpg" />
							<h3 style="color:black; font-weight:bold">Burger Buns</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/croissants.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton179" runat="server" ImageUrl="~/yamifood/grocery/croissants.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Croissants</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton180" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
                       
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
		
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/stock-spread.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton184" runat="server" ImageUrl="~/yamifood/grocery/stock-spread.jpg" />
							<h3 style="color:black; font-weight:bold">Stock Spread</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cheese.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton185" runat="server" ImageUrl="~/yamifood/grocery/cheese.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Cheese</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/chickenPolony.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton186" runat="server" ImageUrl="~/yamifood/grocery/chickenPolony.jpg" />
							<h3 style="color:black; font-weight:bold">Chicken Polony</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/nutello.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton187" runat="server" ImageUrl="~/yamifood/grocery/nutello.jpg"/>
							<h3 style="color:black; font-weight:bold">Nutello</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/peanutButter.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton188" runat="server" ImageUrl="~/yamifood/grocery/peanutButter.jpg" />
							<h3 style="color:black; font-weight:bold">Peanut Butter</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Muffins Panel------------------------------------------------------------------------------>
<div>
<asp:Panel ID="muffinsPanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/muffins.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/muffins2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/muffins3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >MUFFINS</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R20.00" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button128" runat="server" Text="10's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button129" runat="server" Text="20's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button130" runat="server" Text="30's" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button131" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button132" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button133" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button CssClass="btn btn-lg btn-circle btn-outline-new-white" runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />A muffin is a chemically-leavened, batter-based bakery product. It's formulation is somewhere in between a low-ratio cake and quick bread.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />60012435798557</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br />Slice those tender muffins in half and slather with warm butter, cream cheese or peanut butter.</td>
                      
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="muffinsReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="muffinsReviewButton_Click" />
                <br /><br />
                <asp:Panel ID="muffinsReviewPanel1" runat="server">
                <asp:Label ID="Label77" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Mufffins. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                </asp:Panel>
                <br />
                <asp:Panel ID="muffinsReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label78" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox46" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label79" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox47" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label80" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label81" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox48" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button135" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"/>
                    </section>
                    </asp:Panel>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/muffins2.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton189" runat="server" ImageUrl="~/yamifood/grocery/muffins2.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Muffins</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/donuts.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton190" runat="server" ImageUrl="~/yamifood/grocery/donuts.jpg" />
							<h3 style="color:black; font-weight:bold">Donuts</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cookies.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton191" runat="server" ImageUrl="~/yamifood/grocery/cookies.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Cookies</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cake2.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton192" runat="server" ImageUrl="~/yamifood/grocery/cake2.jpg" />
							<h3 style="color:black; font-weight:bold">Cake</h3>
						</a></td>
					</tr>
				</table>
			</div>
    </div>
    <div>
    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/strawberries.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton196" runat="server" ImageUrl="~/yamifood/grocery/strawberries.jpg" />
							<h3 style="color:black; font-weight:bold">Strawberries</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/chocolateSouce.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton197" runat="server" ImageUrl="~/yamifood/grocery/chocolateSouce.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Chocolate Sauce</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/yoghurt.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton198" runat="server" ImageUrl="~/yamifood/grocery/yoghurt.jpg" />
							<h3 style="color:black; font-weight:bold">Yoghurt</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/ice-cream.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton199" runat="server" ImageUrl="~/yamifood/grocery/ice-cream.jpg"/>
							<h3 style="color:black; font-weight:bold">Ice-Cream</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/fruit-juice.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton200" runat="server" ImageUrl="~/yamifood/grocery/fruit-juice.jpg" />
							<h3 style="color:black; font-weight:bold">Fruit Juice</h3>
						</a></td>
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Cooking Oil Panel------------------------------------------------------------------------------>
<div>
<asp:Panel ID="cookingOilPanel" Visible="true" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/cooking-oil.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cookingOil2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/cookingOil3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >COOKING OIL</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text=" R60.00" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                     <!-- <asp:Button CssClass="sizeButton" ID="Button136" runat="server" Text="750ml" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="absolute" />&nbsp;&nbsp;
                        <asp:Button CssClass="sizeButton" ID="Button137" runat="server" Text="2L" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />
                        &nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button138" runat="server" Text="5L" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>-->
                        <asp:Button ID="btnSize1" CssClass="sizeButton" runat="server" Text="750ml" Width="60" />&nbsp;&nbsp<asp:Button ID="btnSize2" CssClass="sizeButton" runat="server" Text="2L" />&nbsp;&nbsp<asp:Button ID="btnSize3" CssClass="sizeButton" runat="server" Text="5L" />
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="btnQuantity1" runat="server" Text="-"  OnClick="btnQuantity1_Click" /><asp:Label ID="lblQuantity" CssClass="quantity" runat="server" Text="0"></asp:Label><asp:Button CssClass="sizeButton" ID="btnQuantity2" runat="server" Text="+" OnClick="btnQuantity2_Click"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button CssClass="btnProduct btn-lg btn-circle btn-outline-new-white" runat="server" Text="Add to cart" width="200" ForeColor="Black" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br />Cooking oil is plant, animal, or synthetic fat used in frying, baking, and other types of cooking.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982345</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br />It is used in food preparation and flavouring not involving heat, such as salad dressings and bread dippings like bread dips, and may be called edible oil.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="cookingOilReviewButton" CssClass="btnProduct btn-lg btn-circle btn-outline-new-white" runat="server" Text="Review this item"  Font-Size="X-Large" Width="330" OnClick="cookingOilReviewButton_Click"  />
                <br /><br />
                <asp:Panel ID="cookingOilReviewPanel1" runat="server">
                <asp:Label ID="Label82" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Cooking Oil. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                </asp:Panel>
                <br />
                <asp:Panel ID="cookingOilReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label83" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox49" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;" ></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label84" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox50" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;" ></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label85" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label86" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox51" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button143" CssClass="btnProduct btn-lg btn-circle btn-outline-new-white" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" Width="330" />
                    </section>
                    </asp:Panel>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

          <asp:Panel ID="Panel2" runat="server" >
             
           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/cooking-oil.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton201" runat="server" ImageUrl="~/yamifood/grocery/cooking-oil.jpg"  />
							<h3 style="color:black; font-weight:bold;">Cooking Oil</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/oliveOil.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton202" runat="server" ImageUrl="~/yamifood/grocery/oliveOil.jpg" />
							<h3 style="color:black; font-weight:bold">Olive Oil</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/coconutOil.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton203" runat="server" ImageUrl="~/yamifood/grocery/coconutOil.jpg" />
							<h3 style="color:black; font-weight:bold">Coconut Oil</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/palmOil.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton204" runat="server" ImageUrl="~/yamifood/grocery/palmOil.jpg" />
							<h3 style="color:black; font-weight:bold">Palm Oil</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/vegetableOil.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton205" runat="server" ImageUrl="~/yamifood/grocery/vegetableOil.jpg" />
							<h3 style="color:black; font-weight:bold">Vegetable Oil</h3>
						</a></td>
						
                      
					</tr>
				</table>
			</div>
                  
         </asp:Panel>


    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
        <asp:Panel ID="Panel1" runat="server">
      
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/onions.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton207" runat="server" ImageUrl="~/yamifood/grocery/onions.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Onions</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/potatoesjpg.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton208" runat="server" ImageUrl="~/yamifood/grocery/potatoesjpg.jpg" />
							<h3 style="color:black; font-weight:bold">Potatoes</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/eggs.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton209" runat="server" ImageUrl="~/yamifood/grocery/eggs.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Eggs</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/tomatoes2.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton210" runat="server" ImageUrl="~/yamifood/grocery/tomatoes2.jpg" />
							<h3 style="color:black; font-weight:bold">Tomatoes</h3>
						</a></td>
                  
                      
					</tr>
				</table>
			</div>
                
            </asp:Panel>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Baby Soft toilet paper Panel------------------------------------------------------------------------------>
<div>
<asp:Panel ID="BabySoftPanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/toiletPaper2.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/toiletPaper3.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/toilet-paper.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >TOILET PAPER</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R80.77" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button8" runat="server" Text="4's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button9" runat="server" Text="10's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button10" runat="server" Text="18's" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button11" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button12" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button13" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Baby Soft Fresh White toilet tissue has special micro-pillow technology that gives it the perfect balance of softness and strength to leave you and your family feeling clean, fresh and confident.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982337</td>
                        
                    </tr>
                    <tr>
                        <br />
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px">Each wipe leaves you feeling fresh and clean</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="toiletPReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="toiletPReviewButton_Click" />
                <br /><br />
                <asp:Panel ID="toiletPReviewPanel1" runat="server">
                <asp:Label ID="Label2" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Toilet Papers. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                    </asp:Panel>
                <br />
             <asp:Panel ID="toiletPReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label3" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox1" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label5" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button15" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"/>
                    </section>
                 </asp:Panel>
            </div>
        </section>
        
    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/toiletPaper2.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton9" runat="server" ImageUrl="~/yamifood/grocery/toiletPaper2.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Baby Soft Toilet Paper</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/facialTissues.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton10" runat="server" ImageUrl="~/yamifood/grocery/facialTissues.jpg" />
							<h3 style="color:black; font-weight:bold">Facial Tissue</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/facialWipes.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton11" runat="server" ImageUrl="~/yamifood/grocery/facialWipes.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Facial Wipes</h3>
						</a></td>
						
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/twinsaver.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton13" runat="server" ImageUrl="~/yamifood/grocery/twinsaver.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Twinsaver Toilet Paper</h3>
						</a></td>
						
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/wipes.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton15" runat="server" ImageUrl="~/yamifood/grocery/wipes.jpg"/>
							<h3 style="color:black; font-weight:bold;">Wipes</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/serviettes.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton16" runat="server" ImageUrl="~/yamifood/grocery/serviettes.jpg" />
							<h3 style="color:black; font-weight:bold">Serviettes</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/pads.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton17" runat="server" ImageUrl="~/yamifood/grocery/pads.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Sanitary Pads</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/pampers.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton18" runat="server" ImageUrl="~/yamifood/grocery/pampers.jpg" />
							<h3 style="color:black; font-weight:bold">Pampers</h3>
						</a></td>
                      
					
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Joko Panel (Done)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="jokoPanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/joko.PNG" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/joko2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/joko3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td id="Joko"><h2 style="text-align:left; font-weight:900;" >JOKO REGULAR TAGLESS TEABAGS</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R497.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button5" runat="server" Text="60's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button6" runat="server" Text="100's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button7" runat="server" Text="120's" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button2" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantity" ID="Button3" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button4" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
                        <td style="font-size:18px"> <br /><br />Joko strong quality tea, blended with the finest leaves for a rich and full flavour. Strong enough to give you a lift.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357987658</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br />To enjoy joko tea at its best, use one bag per cup (guideline only). Pour freshly boiled water over the tea and brew for 3-5minutes with stirring, for full flavour release.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
    
            <asp:Button ID="Button216" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"  OnClick="Button1_Click" AutoPostBack = "false"  />

                
               
                    <br /><br />
                <asp:Panel ID="commentPanel" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                
                <p><strong>This is my all-time favourite of the various Jokos. Simply delicious every time!</strong> 
                    Saskia(27/06/2019)
                </p>
                </asp:Panel>
                <br />
                <asp:Panel ID="reviewPanel" runat="server" Visible="false">
                   <asp:Label ID="lbl1" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="txt1" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lbl2" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="txt2" runat="server" TextMode="MultiLine" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" width="500"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="lbl3" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="lbl4" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="txt4" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="btn2" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" />
                    </asp:Panel>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/images/joko.PNG">
							<asp:ImageButton class="img-fluid" ID="ImageButton3" runat="server" ImageUrl="~/yamifood/grocery/joko.PNG" Height="200" />
							<h3 style="color:black; font-weight:bold;">Joko</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/rooibos.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton4" runat="server" ImageUrl="~/yamifood/grocery/rooibos.jpg" />
							<h3 style="color:black; font-weight:bold">Rooibos</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/jacobs.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton5" runat="server" ImageUrl="~/yamifood/grocery/jacobs.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Jacobs</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/frisco.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton6" runat="server" ImageUrl="~/yamifood/grocery/frisco.jpg" />
							<h3 style="color:black; font-weight:bold">Frisco</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/douwe.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton7" runat="server" ImageUrl="~/yamifood/grocery/douwe.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Douwe</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/ricoffy.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton8" runat="server" ImageUrl="~/yamifood/grocery/ricoffy.jpg" />
							<h3 style="color:black; font-weight:bold">Nescafe</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/milk.jpg">
							<asp:ImageButton class="img-fluid" ID="milkImg" runat="server" ImageUrl="~/yamifood/grocery/milk.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Milk</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/sugar.jpg">
							<asp:ImageButton class="img-fluid" ID="sugarImg" runat="server" ImageUrl="~/yamifood/grocery/sugar.jpg" />
							<h3 style="color:black; font-weight:bold">Sugar</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							
							<asp:ImageButton class="img-fluid" ID="honeyImg" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cremora.jpg">
							<asp:ImageButton class="img-fluid" ID="cremoraImg" runat="server" ImageUrl="~/yamifood/grocery/cremora.jpg" />
							<h3 style="color:black; font-weight:bold">Cremora</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/bread.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton1" runat="server" ImageUrl="~/yamifood/grocery/bread.jpg"/>
							<h3 style="color:black; font-weight:bold">Bread</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton2" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>   
</div> 
<!-----------------------------------------------------Cold drink Panel------------------------------------------------------------------------------>
<div>
<asp:Panel ID="fantaGrapePanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/fanta-grape.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/fantaGrape2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/fantaGrape3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >FANTA GRAPE</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R120.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button14" runat="server" Text="500ml" BackColor="White" Width="70" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button22" runat="server" Text="1.5L" BackColor="White" Width="60" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button23" runat="server" Text="2L" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button30" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button38" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button70" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br />Fanta Grape is a refreshing, sparkling soft drink bursting with delicious grape flavor.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982667</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br />Fanta Grape is the best way to chill out and stay cool this summer</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="fantaGrapeReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="fantaGrapeReviewButton_Click" />
                <br /><br />
                <asp:Panel ID="fantaGrapeReviewPanel1" runat="server">
                <asp:Label ID="Label87" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Cold Drinks. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                    </asp:Panel>
                <br />
             <asp:Panel ID="fantaGrapeReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label88" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox52" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label89" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox53" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label90" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label91" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox54" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" ></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button86" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"/>
                    </section>
                 </asp:Panel>
            </div>
        </section>
        
    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/coke.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton12" runat="server" ImageUrl="~/yamifood/grocery/coke.jpg"  />
							<h3 style="color:black; font-weight:bold;">Coke</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/fantaOrange.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton14" runat="server" ImageUrl="~/yamifood/grocery/fantaOrange.jpg" />
							<h3 style="color:black; font-weight:bold">Fanta Orange</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/sprite.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton19" runat="server" ImageUrl="~/yamifood/grocery/sprite.jpg" height="300"/>
							<h3 style="color:black; font-weight:bold">Sprite</h3>
						</a></td>
						
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/stoney.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton20" runat="server" ImageUrl="~/yamifood/grocery/stoney.jpg" height="300"/>
							<h3 style="color:black; font-weight:bold">Stoney</h3>
						</a></td>
                         <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/fantaGrape2.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton215" runat="server" ImageUrl="~/yamifood/grocery/fantaGrape2.jpg" height="300"/>
							<h3 style="color:black; font-weight:bold">Fanta Grape</h3>
						</a></td>
						
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/cake.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton98" runat="server" ImageUrl="~/yamifood/grocery/cake.jpg"  />
							<h3 style="color:black; font-weight:bold;">Cake</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cookies.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton103" runat="server" ImageUrl="~/yamifood/grocery/cookies.jpg" />
							<h3 style="color:black; font-weight:bold">Cookies</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/donuts.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton104" runat="server" ImageUrl="~/yamifood/grocery/donuts.jpg" />
							<h3 style="color:black; font-weight:bold">Donuts</h3>
						</a></td>
						
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/sandwich.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton105" runat="server" ImageUrl="~/yamifood/grocery/sandwich.jpg" />
							<h3 style="color:black; font-weight:bold">Sandwich</h3>
						</a></td>
                      
					
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Wine Panel------------------------------------------------------------------------------>
<div>
<asp:Panel ID="winePanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/wine.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/wine2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/wine3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >WINE</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R20.00" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button118" runat="server" Text="750ml" BackColor="White" Width="70" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button121" runat="server" Text="2L" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button122" runat="server" Text="3L" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button126" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button134" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button142" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br />Wine is an alcoholic beverage typically made of fermented grape juice.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982887</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br />Serve red wines in large-bowled glasses.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="wineReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="wineReviewButton_Click" />
                <br /><br />
                <asp:Panel ID="wineReviewPanel1" runat="server">
                <asp:Label ID="Label92" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Wine. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                    </asp:Panel>
                <br />
             <asp:Panel ID="wineReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label93" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox55" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label94" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox56" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label95" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label96" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox57" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" ></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button145" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"/>
                    </section>
                 </asp:Panel>
            </div>
        </section>
        
    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/wine.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton106" runat="server" ImageUrl="~/yamifood/grocery/wine.jpg" Height="300"  />
							<h3 style="color:black; font-weight:bold;">Wine</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/vodka.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton107" runat="server" ImageUrl="~/yamifood/grocery/vodka.jpg" />
							<h3 style="color:black; font-weight:bold">Vodka</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cider.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton108" runat="server" ImageUrl="~/yamifood/grocery/cider.jpg" Height="300" />
							<h3 style="color:black; font-weight:bold">Cider</h3>
						</a></td>
						
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/gin.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton109" runat="server" ImageUrl="~/yamifood/grocery/gin.jpg" Height="300" />
							<h3 style="color:black; font-weight:bold">Gin</h3>
						</a></td>				
					</tr>
				</table>
			</div>
    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/wineGlass.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton110" runat="server" ImageUrl="~/yamifood/grocery/wineGlass.jpg"/>
							<h3 style="color:black; font-weight:bold;">Wine Glass</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/shotGlass.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton111" runat="server" ImageUrl="~/yamifood/grocery/shotGlass.jpg" />
							<h3 style="color:black; font-weight:bold">Shot Glass</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/lemon.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton112" runat="server" ImageUrl="~/yamifood/grocery/lemon.jpg"  height="300"/>
							<h3 style="color:black; font-weight:bold">Lemon</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cake.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton113" runat="server" ImageUrl="~/yamifood/grocery/cake.jpg" height="300" />
							<h3 style="color:black; font-weight:bold">Cake</h3>
						</a></td>
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Fruit juice Panel------------------------------------------------------------------------------>
<div>
<asp:Panel ID="Panel7" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/fruit-juice.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/fruitJuice2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/fruitJuice3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >FRUIT JUICE</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text=" R40.00" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button146" runat="server" Text="400ml" BackColor="White" Width="70" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button147" runat="server" Text="2L" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button148" runat="server" Text="5L" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button149" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button150" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button151" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Fruit juice is 100% pure juice made from the flesh of fresh fruit or from whole fruit, depending on the type used.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982443</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br />Always serve from the right-hand side. With your right hand, pick up the coaster and place in the 2 o'clock position of the guest.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="fruitJuiceReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="fruitJuiceReviewButton_Click" />
                <br /><br />
                <asp:Panel ID="fruitJuiceReviewPanel1" runat="server">
                <asp:Label ID="Label97" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Fruit Juices. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                    </asp:Panel>
                <br />
             <asp:Panel ID="fruitJuiceReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label98" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox58" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label99" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox59" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label100" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label101" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox60" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" ></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button153" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"/>
                    </section>
                 </asp:Panel>
            </div>
        </section>
    </div>
<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/appletiser.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton114" runat="server" ImageUrl="~/yamifood/grocery/appletiser.jpg" Height="300" />
							<h3 style="color:black; font-weight:bold;">Appletiser</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/oros.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton115" runat="server" ImageUrl="~/yamifood/grocery/oros.jpg" />
							<h3 style="color:black; font-weight:bold">Oros</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/magalies.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton116" runat="server" ImageUrl="~/yamifood/grocery/magalies.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Magalies</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/krush.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton122" runat="server" ImageUrl="~/yamifood/grocery/krush.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Krush</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/grapetiser.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton216" runat="server" ImageUrl="~/yamifood/grocery/grapetiser.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Grapetiser</h3>
						</a></td>
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/cookies.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton123" runat="server" ImageUrl="~/yamifood/grocery/cookies.jpg"/>
							<h3 style="color:black; font-weight:bold;">Cookies</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/sandwich.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton124" runat="server" ImageUrl="~/yamifood/grocery/sandwich.jpg" />
							<h3 style="color:black; font-weight:bold">Sandwich</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton125" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cake2.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton126" runat="server" ImageUrl="~/yamifood/grocery/cake2.jpg" />
							<h3 style="color:black; font-weight:bold">Cake</h3>
						</a></td>
                      <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/bread.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton217" runat="server" ImageUrl="~/yamifood/grocery/bread.jpg" />
							<h3 style="color:black; font-weight:bold">Bread</h3>
						</a></td>
					
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Cheese Panel------------------------------------------------------------------------------>
<div>
<asp:Panel ID="cheesePanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/cheese.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cheese2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/cheese3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >CHEESE</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R40.00" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button168" runat="server" Text="250g" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button169" runat="server" Text="450g" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button170" runat="server" Text="850g" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button171" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button172" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button173" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Cheese is a dairy product, derived from milk and produced in wide ranges of flavours, textures and forms by coagulation of the milk protein casein.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />6001243579823998</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br />Sneaking cheddar cheese into your crust gives it a super delicious salty-sweet vibe.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
            <asp:Button ID="cheeseReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="cheeseReviewButton_Click" />
                <br /><br />
                <asp:Panel ID="cheeseReviewPanel1" runat="server">
                <asp:Label ID="Label102" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various types of Cheese. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                    </asp:Panel>
                <br />
             <asp:Panel ID="cheeseReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label103" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox61" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label104" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox62" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label105" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label106" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox63" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" ></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button144" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"/>
                    </section>
                 </asp:Panel>
            </div>
        </section>
    </div>
<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/fetaCheese.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton218" runat="server" ImageUrl="~/yamifood/grocery/fetaCheese.jpg" />
							<h3 style="color:black; font-weight:bold;">Feta Cheese</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/melroseSpreadCheese.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton219" runat="server" ImageUrl="~/yamifood/grocery/melroseSpreadCheese.jpg" />
							<h3 style="color:black; font-weight:bold">Melrose Spread</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/mozzarellaCheese.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton220" runat="server" ImageUrl="~/yamifood/grocery/mozzarellaCheese.jpg" />
							<h3 style="color:black; font-weight:bold">Mozzarella Cheese</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/melroseWegdes.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton221" runat="server" ImageUrl="~/yamifood/grocery/melroseWegdes.jpg" />
							<h3 style="color:black; font-weight:bold">Melrose Wedges</h3>
						</a></td>
						
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/polony.png">
							<asp:ImageButton class="img-fluid" ID="ImageButton223" runat="server" ImageUrl="~/yamifood/grocery/polony.png" Height="300" />
							<h3 style="color:black; font-weight:bold;">Polony</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/russiansSausages.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton224" runat="server" ImageUrl="~/yamifood/grocery/russiansSausages.jpg" />
							<h3 style="color:black; font-weight:bold">Russian Sausages</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/bread.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton225" runat="server" ImageUrl="~/yamifood/grocery/bread.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Bread</h3>
						</a></td>
                       
                       
					
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>   
<!-----------------------------------------------------Milk Panel------------------------------------------------------------------------------>
<div>
<asp:Panel ID="milkPanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/milk.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/milk2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/milk3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >MILK</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R77.98" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button154" runat="server" Text="1L" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button155" runat="server" Text="1.2L" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button156" runat="server" Text="6 Pack" BackColor="White" opacity="0.5" Width="80" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button157" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button158" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="sizeButton" ID="Button159" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br />Milk is the most consumed, processed and marketed dairy product.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357987777</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br />Studies suggest that consuming milk and dairy products may prevent osteoporosis and reduce the risk of fractures.</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">

                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Button ID="milkReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="milkReviewButton_Click" />
                </ContentTemplate>
                </asp:UpdatePanel>
                <asp:Panel ID="milkReviewPanel1" runat="server">
                <asp:Label ID="Label107" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various types of Milk. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                    </asp:Panel>
                <br />
             <asp:Panel ID="milkReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label108" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox64" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label109" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox65" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label110" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label111" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox66" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" ></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button161" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"/>
                    </section>
                 </asp:Panel>
            </div>
        </section>
        
    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">SIMILAR ITEMS</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/amasi.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton127" runat="server" ImageUrl="~/yamifood/grocery/amasi.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Amasi</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cremora.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton128" runat="server" ImageUrl="~/yamifood/grocery/cremora.jpg" />
							<h3 style="color:black; font-weight:bold">Cremora</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/condensedMilk.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton169" runat="server" ImageUrl="~/yamifood/grocery/condensedMilk.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Condensed Milk</h3>
						</a></td>
						
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/elisBrown.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton170" runat="server" ImageUrl="~/yamifood/grocery/elisBrown.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Elis Brown</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/formulaMilk.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton222" runat="server" ImageUrl="~/yamifood/grocery/formulaMilk.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Formula Milk</h3>
						</a></td>
						
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">ITEMS YOU MIGHT NEED</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/sugar.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton176" runat="server" ImageUrl="~/yamifood/grocery/sugar.jpg"/>
							<h3 style="color:black; font-weight:bold;">Sugar</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cookies.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton181" runat="server" ImageUrl="~/yamifood/grocery/cookies.jpg" />
							<h3 style="color:black; font-weight:bold">Cookies</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/flour.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton182" runat="server" ImageUrl="~/yamifood/grocery/flour.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Flour</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/kornflakes.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton183" runat="server" ImageUrl="~/yamifood/grocery/kornflakes.jpg" />
							<h3 style="color:black; font-weight:bold">Kornflakes</h3>
						</a></td>
                      
					
                      
					</tr>
				</table>
			</div>
    
</asp:Panel>  
</div>
<!-----------------------------------------------------Yoghurt Panel------------------------------------------------------------------------------>
<div>
<asp:Panel ID="yoghurtPanel" Visible="false" runat="server" >
<!--Start slideshow-->
    <div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/yoghurt.jpg" />
        <label for="i3" class="pre"><</label>
        <label for="i2" class="nxt">></label>


    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/yoghurt2.jpg" />
        <label for="i1" class="pre"><</label>
        <label for="i3" class="nxt">></label>
  

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/yoghurt3.jpg" />
        <label for="i2" class="pre"><</label>
        <label for="i1" class="nxt">></label>
     
    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >YOGHURT</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R38.95" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="sizeButton" ID="Button162" runat="server" Text="100ml" BackColor="White" Width="60" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button163" runat="server" Text="250ml" BackColor="White" Width="60" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="Button164" runat="server" Text="450ml" BackColor="White" opacity="0.5" Width="60" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                 
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="sizeButton" ID="Button165" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Label ID="milkQuantity" runat="server" Text="2" position="inline-block"></asp:Label><asp:Button CssClass="sizeButton" ID="Button167" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute" OnClick="Button167_Click"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br />Yogurt is a fermented milk product and as such is a means of preserving the nutrients in milk.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982345</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br />It's great to eat on its own, but it also fun to make sweet treats like frozen yogurt pops, frozen yogurt-covered fruit!</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="yoghurtReviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" OnClick="yoghurtReviewButton_Click" />
                <br /><br />
                <asp:Panel ID="yoghurtReviewPanel1" runat="server">
                <asp:Label ID="Label112" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various types of Yoghurts. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                    </asp:Panel>
                <br />
             <asp:Panel ID="yoghurtReviewPanel2" Visible="false" runat="server">
                <section >
                   <asp:Label ID="Label113" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox67" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label114" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox68" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label115" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label116" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox69" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" ></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button177" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"/>
                    </section>
                 </asp:Panel>
            </div>
        </section>
        
    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
                        	<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/yoghurt.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton226" runat="server" ImageUrl="~/yamifood/grocery/yoghurt.jpg" />
							<h3 style="color:black; font-weight:bold">Yoghurt</h3>
						</a></td>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/ice-cream.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton193" runat="server" ImageUrl="~/yamifood/grocery/ice-cream.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Ice Cream</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/altramel.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton194" runat="server" ImageUrl="~/yamifood/grocery/altramel.jpg" />
							<h3 style="color:black; font-weight:bold">Altramel Custard</h3>
						</a></td>
						
							
							
						
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/strawberries.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton211" runat="server" ImageUrl="~/yamifood/grocery/strawberries.jpg"/>
							<h3 style="color:black; font-weight:bold;">Strawberries</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/serviettes.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton212" runat="server" ImageUrl="~/yamifood/grocery/serviettes.jpg" />
							<h3 style="color:black; font-weight:bold">Serviettes</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/blueberries.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton213" runat="server" ImageUrl="~/yamifood/grocery/blueberries.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Blueberries</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton214" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
                      
					
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Eggs Panel(Skipped)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="eggsPanel" Visible="false" runat="server" >
<!--Start slideshow-->
<div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/eggs.jpg" />

       <!--<a href="#" class="back">‹</a>
<a href="#" class="next">›</a>-->

    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cooking-oil.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/bread.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;">Eggs</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R497.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="quantity" ID="Button192" runat="server" Text="60's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantityNo" ID="Button193" runat="server" Text="100's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantity" ID="Button194" runat="server" Text="120's" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="quantity" ID="Button195" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button196" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantity" ID="Button197" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Baby Soft Fresh White toilet tissue has special micro-pillow technology that gives it the perfect balance of softness and strength to leave you and your family feeling clean, fresh and confident.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982337</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br /> Each wipe leaves you feeling fresh and clean</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="Button198" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="White" OnClick="Button1_Click" />
                <br /><br />
                <asp:Label ID="Label117" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Toilet Papers. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                
                <br />
                <section >
                   <asp:Label ID="Label118" runat="server" Text="REVIEW TITLE" Font-Bold="true" Visible="false"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox70" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label119" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox71" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" Visible="false"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label120" runat="server" Text="YOUR RATING" Font-Bold="true" Visible="false"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label121" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox72" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button199" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="White" Visible="false" />
                    </section>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/images/joko.PNG">
							<asp:ImageButton class="img-fluid" ID="ImageButton285" runat="server" ImageUrl="~/yamifood/grocery/joko.PNG" Height="200" />
							<h3 style="color:black; font-weight:bold;">Joko</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/rooibos.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton286" runat="server" ImageUrl="~/yamifood/grocery/rooibos.jpg" />
							<h3 style="color:black; font-weight:bold">Rooibos</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/jacobs.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton287" runat="server" ImageUrl="~/yamifood/grocery/jacobs.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Jacobs</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/frisco.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton288" runat="server" ImageUrl="~/yamifood/grocery/frisco.jpg" />
							<h3 style="color:black; font-weight:bold">Frisco</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/douwe.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton289" runat="server" ImageUrl="~/yamifood/grocery/douwe.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Douwe</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/ricoffy.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton290" runat="server" ImageUrl="~/yamifood/grocery/ricoffy.jpg" />
							<h3 style="color:black; font-weight:bold">Nescafe</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/milk.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton291" runat="server" ImageUrl="~/yamifood/grocery/milk.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Milk</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/sugar.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton292" runat="server" ImageUrl="~/yamifood/grocery/sugar.jpg" />
							<h3 style="color:black; font-weight:bold">Sugar</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton293" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cremora.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton294" runat="server" ImageUrl="~/yamifood/grocery/cremora.jpg" />
							<h3 style="color:black; font-weight:bold">Cremora</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/bread.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton295" runat="server" ImageUrl="~/yamifood/grocery/bread.jpg"/>
							<h3 style="color:black; font-weight:bold">Bread</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton296" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Ice Cream Panel(Skipped)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="iceCreamPanel" Visible="false" runat="server" >
<!--Start slideshow-->
<div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/ice-cream.jpg" />

       <!--<a href="#" class="back">‹</a>
<a href="#" class="next">›</a>-->

    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cooking-oil.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/bread.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >Ice Cream</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R497.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="quantity" ID="Button200" runat="server" Text="60's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantityNo" ID="Button201" runat="server" Text="100's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantity" ID="Button202" runat="server" Text="120's" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="quantity" ID="Button203" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button204" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantity" ID="Button205" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Baby Soft Fresh White toilet tissue has special micro-pillow technology that gives it the perfect balance of softness and strength to leave you and your family feeling clean, fresh and confident.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982337</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br /> Each wipe leaves you feeling fresh and clean</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="Button206" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="White" OnClick="Button1_Click" />
                <br /><br />
                <asp:Label ID="Label122" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Toilet Papers. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                
                <br />
                <section >
                   <asp:Label ID="Label123" runat="server" Text="REVIEW TITLE" Font-Bold="true" Visible="false"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox73" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label124" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox74" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" Visible="false"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label125" runat="server" Text="YOUR RATING" Font-Bold="true" Visible="false"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label126" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox75" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button207" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="White" Visible="false" />
                    </section>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/images/joko.PNG">
							<asp:ImageButton class="img-fluid" ID="ImageButton297" runat="server" ImageUrl="~/yamifood/grocery/joko.PNG" Height="200" />
							<h3 style="color:black; font-weight:bold;">Joko</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/rooibos.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton298" runat="server" ImageUrl="~/yamifood/grocery/rooibos.jpg" />
							<h3 style="color:black; font-weight:bold">Rooibos</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/jacobs.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton299" runat="server" ImageUrl="~/yamifood/grocery/jacobs.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Jacobs</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/frisco.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton300" runat="server" ImageUrl="~/yamifood/grocery/frisco.jpg" />
							<h3 style="color:black; font-weight:bold">Frisco</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/douwe.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton301" runat="server" ImageUrl="~/yamifood/grocery/douwe.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Douwe</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/ricoffy.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton302" runat="server" ImageUrl="~/yamifood/grocery/ricoffy.jpg" />
							<h3 style="color:black; font-weight:bold">Nescafe</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/milk.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton303" runat="server" ImageUrl="~/yamifood/grocery/milk.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Milk</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/sugar.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton304" runat="server" ImageUrl="~/yamifood/grocery/sugar.jpg" />
							<h3 style="color:black; font-weight:bold">Sugar</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton305" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cremora.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton306" runat="server" ImageUrl="~/yamifood/grocery/cremora.jpg" />
							<h3 style="color:black; font-weight:bold">Cremora</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/bread.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton307" runat="server" ImageUrl="~/yamifood/grocery/bread.jpg"/>
							<h3 style="color:black; font-weight:bold">Bread</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton308" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>
<!-----------------------------------------------------Stock-Spread Panel(Skipped)------------------------------------------------------------------------------>
<div>
<asp:Panel ID="stockSpread" Visible="false" runat="server" >
<!--Start slideshow-->
<div class="SScontainer">

    <input type="radio" name="images" id="i1" checked />
    <input type="radio" name="images" id="i2" />
    <input type="radio" name="images" id="i3" />

    <div class="slide_img" id="one">
        <img src="yamifood/grocery/stock-spread.jpg" />

       <!--<a href="#" class="back">‹</a>
<a href="#" class="next">›</a>-->

    </div>
    <div class="slide_img" id="two">
        <img src="yamifood/grocery/cooking-oil.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
    <div class="slide_img" id="three">
        <img src="yamifood/grocery/bread.jpg" />

        <a href="#" class="back">‹</a>
<a href="#" class="next">›</a>

    </div>
   <!-- <div class="nav">
        <label class="dots" id="dot1 for=i1"></label>
        <label class="dots" id="dot2 for=i2"></label>
        <label class="dots" id="dot3 for=i3"></label>

    </div>-->
</div>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
  
    
    <div class="Scontainer">
        <div>

            <table style="width: 100%;">
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" >Stock Spread</h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text="R497.99" ForeColor="#333333" ></asp:Label></h4></td>
                   
                </tr>
                <tr>
                    <td style="height:40px;"> <asp:Label runat="server" Text="SIZE"></asp:Label>
                    <br />
                      <asp:Button CssClass="quantity" ID="Button208" runat="server" Text="60's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantityNo" ID="Button209" runat="server" Text="100's" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="black" position="inline-block" />&nbsp;&nbsp;<asp:Button CssClass="quantity" ID="Button210" runat="server" Text="120's" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="black" BorderWidth="1" float="left" position="absolute"/>
                  
                   
                    </td>
                </tr>
                <tr>
                    <td style="height:50px"> 
                        <br />
                        <asp:Label runat="server" Text="QUANTITY"></asp:Label>
                        <br />
                         <asp:Button CssClass="quantity" ID="Button211" runat="server" Text="-" BackColor="White" Width="50" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantityNo" ID="Button212" runat="server" Text="0" BackColor="White" Width="40" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" /><asp:Button CssClass="quantity" ID="Button213" runat="server" Text="+" BackColor="White" opacity="0.5" Width="50" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button runat="server" Text="Add to cart" width="200" Height="40" />
                    </td>
                </tr>
                <tr>
                    <td> 
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            </div>
      </div>
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION</label>

                </li>
                <li class="tab2">
                     <label for="tab2" style="font-weight:bold; font-size:18px; ">REVIEWS</label>
                </li>
                
            </ul>
        </nav>
        <section>
            <div class="tab1">
                <table style="width: 100%;">
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Description:</td>
	<td style="font-size:18px"> <br /><br />Baby Soft Fresh White toilet tissue has special micro-pillow technology that gives it the perfect balance of softness and strength to leave you and your family feeling clean, fresh and confident.</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px"><br /><br />Barcode:</td>
                        <td style="font-size:18px"><br /><br />600124357982337</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight:800; width:200px; font-size:20px">Usage:</td>
                        <td style="font-size:18px"><br /><br /><br /> Each wipe leaves you feeling fresh and clean</td>
                       
                    </tr>    
                </table>
                <br />
                <p style="background-color:gainsboro; opacity:0.8; font-size:16px;padding:5px;">We recommend that you do not rely solely on this information and always check product labels.</p>
            </div>

            <div class="tab2">
                <asp:Button ID="Button214" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="White" OnClick="Button1_Click" />
                <br /><br />
                <asp:Label ID="Label127" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>

                <p><strong>This is my all-time favourite of the various Toilet Papers. Simply the best!</strong> 
                    Saskia(27/06/2019)
                </p>
                
                <br />
                <section >
                   <asp:Label ID="Label128" runat="server" Text="REVIEW TITLE" Font-Bold="true" Visible="false"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox76" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label129" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox77" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" Visible="false"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label130" runat="server" Text="YOUR RATING" Font-Bold="true" Visible="false"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label131" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true" Visible="false"></asp:Label><br />
                <asp:TextBox ID="TextBox78" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" Visible="false"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button215" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="White" Visible="false" />
                    </section>
            </div>
        </section>

    </div>

<br /><br />
      <!--Similar Items-->
    <div>
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Similar Items</h1>

           <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/images/joko.PNG">
							<asp:ImageButton class="img-fluid" ID="ImageButton309" runat="server" ImageUrl="~/yamifood/grocery/joko.PNG" Height="200" />
							<h3 style="color:black; font-weight:bold;">Joko</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/rooibos.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton310" runat="server" ImageUrl="~/yamifood/grocery/rooibos.jpg" />
							<h3 style="color:black; font-weight:bold">Rooibos</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/jacobs.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton311" runat="server" ImageUrl="~/yamifood/grocery/jacobs.jpg" Height="210" />
							<h3 style="color:black; font-weight:bold">Jacobs</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/frisco.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton312" runat="server" ImageUrl="~/yamifood/grocery/frisco.jpg" />
							<h3 style="color:black; font-weight:bold">Frisco</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/douwe.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton313" runat="server" ImageUrl="~/yamifood/grocery/douwe.jpg"  Height="230"/>
							<h3 style="color:black; font-weight:bold">Douwe</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/ricoffy.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton314" runat="server" ImageUrl="~/yamifood/grocery/ricoffy.jpg" />
							<h3 style="color:black; font-weight:bold">Nescafe</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>



    </div>
    <div>

    </div>
    <div>
        <br />
        <h1 class="heading-title" style="text-align:center; font-weight:bolder">Items you might need</h1>
     
         <div class=" scrollmenu">
				 <table style="width: 100%;">
					<tr>
						<td>&nbsp;<a class="lightbox" href="yamifood/grocery/milk.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton315" runat="server" ImageUrl="~/yamifood/grocery/milk.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold;">Milk</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/sugar.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton316" runat="server" ImageUrl="~/yamifood/grocery/sugar.jpg" />
							<h3 style="color:black; font-weight:bold">Sugar</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/honey.jpg">
							
							<asp:ImageButton class="img-fluid" ID="ImageButton317" runat="server" ImageUrl="~/yamifood/grocery/honey.jpg" Height="200" />
							<h3 style="color:black; font-weight:bold">Honey</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/cremora.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton318" runat="server" ImageUrl="~/yamifood/grocery/cremora.jpg" />
							<h3 style="color:black; font-weight:bold">Cremora</h3>
						</a></td>
                        <td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/bread.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton319" runat="server" ImageUrl="~/yamifood/grocery/bread.jpg"/>
							<h3 style="color:black; font-weight:bold">Bread</h3>
						</a></td>
						<td>&nbsp;&nbsp;&nbsp;<a class="lightbox" href="yamifood/grocery/muffins.jpg">
							<asp:ImageButton class="img-fluid" ID="ImageButton320" runat="server" ImageUrl="~/yamifood/grocery/muffins.jpg" />
							<h3 style="color:black; font-weight:bold">Muffins</h3>
						</a></td>
                      
					</tr>
				</table>
			</div>
    </div>
</asp:Panel>  
</div>


</asp:Content>
 




