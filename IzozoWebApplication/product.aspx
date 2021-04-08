<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>
<%-- <%@ PreviousPageType VirtualPath="~/order.aspx"  %>--%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
       /* margin:0 0 0 200px;
        margin-top: 50px;
        position: relative;
        width:50%;
        height:200px;
        padding-bottom:20%;
        
        border:solid 0px #2c2c2c;
        float:left;
        display: inline-block
        */
       float: left;
  width: 50%;
  padding: 50px 200px;
  height: 500px; 
    }
    .Scontainer{
        margin:0 0 80px 100px;
        margin-top: 50px;
        position: relative;
        width:50%;
        height:0;
        padding-bottom:20%;
        border:solid 0px #2c2c2c;
        float:left;
        display: inline-block
       
        
    }
    .rowContainer:after {
        content: "";
        display: table;
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



<!--Start slideshow-->
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
       
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1"  runat="server" >
        <ContentTemplate >
            <div class="SScontainer" >
            <asp:Timer runat="server" ID="timer1" Interval="1000" OnTick="Unnamed1_Tick"></asp:Timer>
    <asp:Image ID="Image1" runat="server"/>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>   --%>  
 

    <!--Product Image-->
    <!--<FooterStyle BackColor="#CCCC99" ForeColor="Black" Wrap="False" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />-->
    <!--  <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" /> -->
    <asp:DataList ID="DataList1" runat="server"  DataSourceID="DataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="5" DataKeyField="itemID" ForeColor="Black" GridLines="Horizontal" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
       
        <ItemTemplate>
         <div class="rowContainer"> 
            <div class="SScontainer" >
           
           
         
            <asp:Image ID="itemImageLabel" runat="server" ImageUrl='<%#"data:Image/png;base64,"+ Convert.ToBase64String((byte[]) Eval("itemImage")) %>' Width="300"  />
               </div>
            
            <div class="SScontainer" style="background-color:rgba(210, 180, 140, 0.23)" >
            
            
            <h2><asp:Label ID="itemNameLabel" style="text-align:left; font-weight:900;"  runat="server" Text='<%# Eval("itemName") %>' /></h2>
            
           
            <h4><asp:Label runat="server" style="height:50px; color:black;" Font-Size="Medium" Text='<%# Eval("itemPrice") %>' ></asp:Label></h4>
          
            <asp:Label ID="itemSizeLabel" style="height:40px;" runat="server" Font-Size="Small" Font-Bold="true" Text="SIZE" />
                <br />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text = "item 1"></asp:ListItem>
                    <asp:ListItem Text="item 2"></asp:ListItem>
                    <asp:ListItem Text="Item 3"></asp:ListItem>
                    
                    
                </asp:RadioButtonList>
                
                <asp:Label runat="server" Text="QUANTITY" Font-Size="Small" Font-Bold="true"></asp:Label>
                <br />
                <asp:Button CssClass="sizeButton" ID="btnMinus" runat="server" Text="-" BackColor="White" Width="30" height="30" BorderStyle="Solid" BorderWidth="1" BorderColor="#cccccc" position="inline-block" UseSubmitBehavior="false" CommandName="minusItem"  />&nbsp; &nbsp;<asp:Label ID="lblQuantity" runat="server" Text="1" ></asp:Label>&nbsp;&nbsp;<asp:Button CssClass="sizeButton" ID="btnAdd" runat="server" Text="+" BackColor="White" opacity="0.5" Width="30" height="30" BorderStyle="Solid" BorderColor="#cccccc" BorderWidth="1" float="left" position="absolute" CommandName="addItem" UseSubmitBehavior="false"  />
              
                <br />
            <br />

                <asp:Button ID="Button1" CssClass="btnProduct btn-lg btn-circle btn-outline-new-white" runat="server" Text="Add to Cart" /><br /><br />
                
                <asp:Label ID="Label10" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

                <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>&nbsp; &nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />


                </div>
          </div>
               
            <br /><br /><br />
            <div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION<li class="tab2">
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
            <asp:Button ID="reviewButton" CssClass="tab3" runat="server" Text="Review this item" Font-Bold="true" Font-Size="X-Large" ForeColor="black" OnClick="reviewButton_Click"  />
         <asp:Panel ID="revPanel1" runat="server">
            
                
                <br /><br />

                
                <asp:Label ID="Label7" runat="server" Text="Deelicious" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                
                <p><strong>This is my all-time favourite of the various Jokos. Simply delicious every time!</strong> 
                    Saskia(27/06/2019)
                </p>
                
                <br />
         </asp:Panel>
         <asp:Panel ID="revPanel2" runat="server" Visible="false">
                   <asp:Label ID="Label8" runat="server" Text="REVIEW TITLE" Font-Bold="true"></asp:Label>
                 <br />
                <asp:TextBox ID="TextBox4" runat="server"  BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="REVIEW DESCRIPTION" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" height="100" width="500" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <br />
                <br />
                   <asp:Label ID="Label1" runat="server" Text="YOUR RATING" Font-Bold="true"></asp:Label><br />
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star checked" ></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Text="YOUR NAME(OPTIONAL)" Font-Bold="true"></asp:Label><br />
                <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" BorderColor="Gray" BorderWidth="1" Height="40" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <br />
                <br />
                

                <asp:Button ID="Button2" runat="server" Text="Submit review" Font-Bold="true" Font-Size="X-Large" ForeColor="Black" />
       </asp:Panel>      
                </div>
        </section>    
    </div>


        
                
               

        </ItemTemplate>
   
    </asp:DataList>

    <asp:SqlDataSource ID="DataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM tblitem" OnSelecting="DataSource1_Selecting1"></asp:SqlDataSource>

        <%--
        
    

<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start product information-->
   <%-- <div class="Scontainer" >
    <asp:DataList ID="DataList2" runat="server" DataSourceID="DataSource1" style ="width:300px; height:300px; display:inline-block" Width="200px"  >
        <ItemTemplate>
  
   
   <!-- <div class="Scontainer">-->
        

            <table style="width: 100%;" >
                <tr>
                    <td><h2 style="text-align:left; font-weight:900;" ><%# Eval("itemName") %></h2></td>
                    
                </tr>
                <tr>
                    <td style="height:50px; color:black;">
                        <h4><asp:Label runat="server" Font-Size="Medium" Text='<%# Eval("itemPrice") %>' ForeColor="#333333" ></asp:Label></h4></td>
                   
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
             &nbsp;
                        <asp:Label runat="server" Text="0 Reviews" Font-Size="Small" ForeColor="red"></asp:Label><br />
                        <asp:Label runat="server" Text="|" ForeColor="#999999"></asp:Label><asp:Label runat="server" Text="Review this item" Font-Size="Small" ForeColor="red"></asp:Label><br />
                    </td>
                </tr>
            </table>
            

 </ItemTemplate>
</asp:DataList> 
        </div>
    <asp:SqlDataSource ID="DataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="DataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM tblitem"></asp:SqlDataSource>--%>
<!----------------------------------------------------------------------------------------------------------------------------------->
<!--Start Tabs-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


    <%--<div class="pc-tab">
        <input checked="checked" id ="tab1" type="radio" name="pct" />
        <input id ="tab2" type="radio" name="pct" />
        <input id ="tab3" type="radio" name="pct" />
        <nav>
            <ul>
                <li class="tab1" >
                    
                    <label for="tab1" style="font-weight:bold; font-size:18px; ">PRODUCT INFORMATION<li class="tab2">
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
               </div>--%>
            </section>
<br /><br />
      <!--Similar Items-->
   <%-- <div>
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
        </div>--%>
   
<br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br />


       


        </label>



       


</asp:Content>
 




