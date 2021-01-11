<%@ Page Language="VB" AutoEventWireup="false" CodeFile="payment.aspx.vb" Inherits="IzozoWebApplication_payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>IzozoQHA</title>  
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.icon" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link href="font/flaticon.css" rel="stylesheet" type="text/css" />


    <!-- Bootstrap CSS -->
    <link href="yamifood/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!-- Site CSS -->
    <link href="yamifood/css/style.css" rel="stylesheet" type="text/css" />
    <!-- Responsive CSS -->
    <link href="yamifood/css/responsive.css" rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    <link href="yamifood/css/custom.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
       <a class="navbar-brand" href="home.aspx">
					<img src="yamifood/images/logo.png" alt="" height="90px" width="250px" />
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
    <br /><br /><br /><br />
    <br /><br />
    <div class="wrapper">
   <h2> Payment details</h2>
   <form method="post">

      <div class="input-grp">
         <div class="input-box">
            <input type="tel" placeholder="Card holder" required class="name" />
            <i class="fa fa-user icon"></i>
         </div>
      </div>
      <div class="input-grp">
         <div class="input-box">
            <input type="tel" placeholder="Card number" required class="name" />
            <i class="fa fa-credit-card icon"></i>
         </div>
      </div>

      <div class="input-grp">
      <div class="input-box">
            <input type="tel" placeholder="Expiry date" required class="name" />
            <i class="fa fa-calendar icon"></i>
         </div>
         <div class="input-box">
            <input type="tel" placeholder="Card CVC" required class="name" />
            <i class="fa fa-lock icon"></i>
         </div>
         
      </div>
      
      <div class="input-grp">
         <div class="input-box">
             
 <asp:Button ID="Button1" runat="server" style="width: 100%; background: transparent; border: none; background: tan; color: #fff; padding:15px; border-radius: 4px; font-size: 16px; transition: all 0.35s ease;" Text="Pay" />
         </div>
      </div>
   </form>
</div>


<br />
    </form>
</body>
</html>
