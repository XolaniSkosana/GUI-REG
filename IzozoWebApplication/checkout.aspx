<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Izozo</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.icon" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link href="fonts/font/flaticon.css" rel="stylesheet" type="text/css" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">    
	<!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div>
    <form id="form1" runat="server">
    
    <div>
    <!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
       <a class="navbar-brand" href="home.aspx">
					<img src="images/logo.png" alt="" height="90px" width="250px" />
				</a>
			<div class="step_progressbar">
				<ul>
                <li class="active">Delivery</li>
                <li>Payment</li>
                <li>Confirmation</li>
                </ul>
			</div>
             <asp:LinkButton ID="LinkButton2" style="color: Blue; font-size: 18px;" runat="server"><i class="fa fa-shopping-cart fa-2x" style="color:#bdbdbd"></i>&nbsp;&nbsp;Back to cart</asp:LinkButton>
		</nav>
	</header>
    </div>
	<!-- End header -->
    <br /><br /><br /><br />
    <br />
	
    <div id="content">
       <div style="height: 1000px; margin-right:5px; float:left;">
			<asp:Label ID="Label1" runat="server" style="font-size: x-large; font-weight: 700; color: Black;" Text="DELIVERY METHOD"></asp:Label><br />
           <asp:Label ID="Label2" runat="server" 
                style="font-size: 20px;  color: Black; border-radius: 5px; border: 1px solid #777; padding: 8px;  border-bottom: none;" 
                Width="850px"><asp:RadioButton ID="RadioButton1" runat="server" />&nbsp;<i class="flaticon-delivery-truck" style="font-weight: bold"></i>&nbsp;Delivery</asp:Label>&nbsp;<br />
           <asp:Label ID="Label3" runat="server" 
                style="font-size: 20px; color: Black; border-radius: 5px; border: 1px solid #777;  padding: 8px;" 
                Width="850px"><asp:RadioButton ID="RadioButton2" runat="server" />&nbsp;<i class="flaticon-shop" style="font-weight: bold"></i>&nbsp;Collection (This option is available for takeaway purchases only)</asp:Label><br /><br />
            <asp:Label ID="Label12" runat="server" style="font-size: x-large; color: Black;" Text="ADD DELIVERY ADDRESS"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" style="margin-left: 0px; border: 1px solid #456879; color: #777; border-radius: 5px;width:48%;font-size:20px; float:left;"  placeholder="Recipient name" CssClass="tb5" runat="server" ></asp:TextBox>&nbsp;&nbsp;
           <asp:TextBox ID="TextBox2" style="margin-left: 0px; border: 1px solid #456879; color: #777; border-radius: 5px;width:48%;font-size:20px;" CssClass="tb5" placeholder="Recipient mobile number" runat="server"></asp:TextBox><br /><br />
           <asp:TextBox ID="TextBox3" style="margin-left: 0px; border: 1px solid #456879; color: #777; border-radius: 5px;width:97.7%;font-size:20px;" CssClass="tb5" placeholder="Street address" runat="server"></asp:TextBox><br /><br />
           <asp:TextBox ID="TextBox4" style="margin-left: 0px; border: 1px solid #456879; color: #777; border-radius: 5px;width:97.7%;font-size:20px;" CssClass="tb5" placeholder="Complex/building" runat="server"></asp:TextBox><br /><br />
           <asp:TextBox ID="TextBox5" style="margin-left: 0px ;border: 1px solid #456879; color: #777; border-radius: 5px;width:97.7%;font-size:20px;" CssClass="tb5" placeholder="Suburb" runat="server"></asp:TextBox><br /><br />
           <asp:TextBox ID="TextBox6" style="margin-left: 0px; border: 1px solid #456879; color: #777; border-radius: 5px;width:97.7%;font-size:20px;" CssClass="tb5" placeholder="City" runat="server"></asp:TextBox><br /><br /> 
           <select id="country" style="margin-left: 0px;font-size:16px; color: #777; border: 1px solid #456879; color: #777; border-radius: 5px; width:32%; height: 50px;font-size:20px;">
            <option value="country">Country/Region</option>
            <option value="1">usa</option>
            <option value="2">select country</option>
            <option value="3">select country</option>
            <option value="4">select country</option>
            <option value="5">select country</option>
            <option value="6">select country</option>
            <option value="7">select country</option>
           </select>&nbsp;&nbsp;
           <select id="Select1" style="margin-left: 0px; height: 22px; border: 1px solid #456879; color: #777; border-radius: 5px; width:32%; height: 50px;font-size:20px;" >
            <option value="country">Province</option>
            <option value="1">Eastern Cape</option>
            <option value="2">Free State</option>
            <option value="3">Gauteng</option>
            <option value="4">Kwazulu-Natal</option>
            <option value="5">Limpopo</option>
            <option value="6">Mpumalanga</option>
            <option value="7">Northern Cape</option>
            <option value="7">North West</option>
           </select>&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox7" style="margin-left: 0px; border: 1px solid #456879; color: #777; border-radius: 5px;width:31%;" CssClass="tb5" placeholder="Postal code" runat="server"></asp:TextBox><br /><br /> 
           <asp:CheckBox ID="CheckBox1" Text="Save this information for next time" style=" color:Black; font-size:20px;" runat="server" />
        </div>          
        <div style="height:400px">
     			<asp:Label ID="Label13" runat="server" style="font-size: x-large; font-weight: 700; color: Black;" Text="ORDER SUMMARY"></asp:Label><br />
                <br />
            <asp:Label ID="Label14" runat="server" Text="Subtotal :" style="color: Black"></asp:Label><br />
            <asp:Label ID="Label15" runat="server" Text="Delivery fee :" style="color: Black"></asp:Label><br />
            <asp:Label ID="Label16" runat="server" Text="Service fee :" style="color: Black"></asp:Label><br />
            <asp:Label ID="Label17" runat="server" Text="Total :" style="font-weight: bold; color: Black"></asp:Label><br /><br />

            <asp:Label ID="Label4" runat="server" Text="" style="font-weight: bold; color: Black; background-color: white; padding: 5px"><i class="fa fa-lock fa-fw"></i>Secure Checkout</asp:Label><br /><br />

            <asp:LinkButton ID="LinkButton1" CssClass="btn1" runat="server">LinkButton</asp:LinkButton>
            <asp:Button ID="Button1" CssClass="btn1" runat="server" Text="Continue" />
        </div>
  </div>

</form>
</div>
</body>
</html>