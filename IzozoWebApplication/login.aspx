<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <link rel="stylesheet" type="text/css" href="loginStyle.css" />
	<link rel="stylesheet" href="myStyle.css" type="text/css" />
   <script src="https://code.jquery.com/jquery-3.3.1.js"></script> 
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://www.w3school.com/lib/w3.css" />
	<style>

.login-button {
    max-width: 150px;
    width: 100%;
    background: #444444;
    color: #f9f9f9;
    border: none;
    padding: 10px;
    text-transform: uppercase;
    border-radius: 2px;
    float: right;
    cursor: pointer;
    
}
.login-show input[type="button"] {
    max-width: 150px;
    width: 100%;
    background: #444444;
    color: #f9f9f9;
    border: none;
    padding: 10px;
    text-transform: uppercase;
    border-radius: 2px;
    float: right;
    cursor: pointer;
}

.login-show a {
    display: inline-block;
    padding: 10px 0;
}

.register-show input[type="text"], .register-show input[type="password"] {
    width: 100%;
    display: block;
    margin: 20px 0;
    padding: 15px;
    border: 1px solid #b5b5b5;
    outline: none;
}
.reg-button{
     max-width: 150px;
    width: 100%;
    background: #444444;
    color: #f9f9f9;
    border: none;
    padding: 10px;
    text-transform: uppercase;
    border-radius: 2px;
    float: right;
    cursor: pointer;
}
.register-show input[type="button"] {
    max-width: 150px;
    width: 100%;
    background: #444444;
    color: #f9f9f9;
    border: none;
    padding: 10px;
    text-transform: uppercase;
    border-radius: 2px;
    float: right;
    cursor: pointer;
}
  .login-reg-panel #label-login
    {
        border: 1px solid #9E9E9E;
        padding: 0 5px;
        width: 150px;
        display: block;
        text-align: center;
        border-radius: 3px;
        cursor: pointer;
    }
   .login-reg-panel #label-register
   {
        border: 1px solid #9E9E9E;
        padding: 0 5px;
        width: 150px;
        display: block;
        text-align: center;
        border-radius: 3px;
        cursor: pointer;
        
   }
   .white-panel {
   /* background-color: rgba(255,255, 255, 1);*/
    background-color: rgb(210,180,140);
    height: 700px;
    position: absolute;
    top: -50px;
    width: 50%;
    right: calc(50% - 50px);
    transition: .3s ease-in-out;
    z-index: 0;
}


}
	</style>
	<!-- <td style="font-size:18px"> <br /><br />Baby Soft Fresh White toilet tissue has special micro-pillow technology that gives it the perfect balance of softness and strength to leave you and your family feeling clean, fresh and confident.</td>-->

	
     <div class="login-reg-panel" style="height:500px";>
		<div class="login-info-box">
			<h2 style="color:white;">Have an account?</h2>
			<br />
			<label id="label-register" for="log-reg-show" style="color:white; font-weight:bold;">Login</label>
			<input type="radio" name="active-log-panel" id="log-reg-show"  checked="checked"/>
		</div> 
							
		<div class="register-info-box">
			<h2 style="color:white;">Don't have an account?</h2>
			<br />
			<label id="label-login" for="log-login-show" style="color:white; font-weight:bold">Register</label>
			<input type="radio" name="active-log-panel" id="log-login-show"/>
		</div>
							
		<div class="white-panel" style="height:700px;";>
			<div class="login-show">
				<h2>LOGIN</h2>
                <asp:TextBox ID="username" runat="server" placeholder="Username" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px; "></asp:TextBox>
				<asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password" height="50" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <asp:Button CssClass="login-button" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"  Width="250"  height="50"/>
				<a href="#">Forgot password?</a>
			</div>
			<div class="register-show">
				<h2>REGISTER</h2>
                <asp:TextBox  ID="name" runat="server" placeholder="Name" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
				<asp:TextBox ID="surname" runat="server" placeholder="Surname" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
				<asp:TextBox ID="userN" runat="server" placeholder="Username" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
				<asp:TextBox ID="email" runat="server" placeholder="Email" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
				<asp:TextBox ID="cellNo" runat="server" placeholder="Cellphone Number" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
				<asp:TextBox ID="CreatePasswd" runat="server" placeholder="Create your Password" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;" ></asp:TextBox>
				<asp:TextBox ID="confPassword" runat="server" placeholder="Confirm your Password" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
				<asp:Button CssClass="reg-button" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" Width="250" height="50"/>
			</div>
		</div>
	</div>
    

	<script>
    $(document).ready(function(){
    $('.login-info-box').fadeOut();
    $('.login-show').addClass('show-log-panel');
});


$('.login-reg-panel input[type="radio"]').on('change', function() {
    if($('#log-login-show').is(':checked')) {
        $('.register-info-box').fadeOut(); 
        $('.login-info-box').fadeIn();
        
        $('.white-panel').addClass('right-log');
        $('.register-show').addClass('show-log-panel');
        $('.login-show').removeClass('show-log-panel');
        
    }
    else if($('#log-reg-show').is(':checked')) {
        $('.register-info-box').fadeIn();
        $('.login-info-box').fadeOut();
        
        $('.white-panel').removeClass('right-log');
        
        $('.login-show').addClass('show-log-panel');
        $('.register-show').removeClass('show-log-panel');
    }
});
    </script>

	
	

</asp:Content>

