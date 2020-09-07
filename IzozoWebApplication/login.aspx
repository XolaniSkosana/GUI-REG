<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <link rel="stylesheet" type="text/css" href="loginStyle.css" />
	<link rel="stylesheet" href="myStyle.css" type="text/css" />
   <script src="https://code.jquery.com/jquery-3.3.1.js"></script> 
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

	
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
							
		<div class="white-panel" style="height:650px;";>
			<div class="login-show">
				<h2>LOGIN</h2>
                <asp:TextBox CssClass="textBox" ID="username" runat="server" placeholder="Username"></asp:TextBox>
				<asp:TextBox CssClass="textBox" ID="password" runat="server" placeholder="Password" TextMode="Password" height="50"></asp:TextBox>
                <asp:Button CssClass="button" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>
				<a href="#">Forgot password?</a>
			</div>
			<div class="register-show">
				<h2>REGISTER</h2>
                <asp:TextBox ID="name" runat="server" placeholder="Name"></asp:TextBox>
				<asp:TextBox ID="surname" runat="server" placeholder="Surname"></asp:TextBox>
				<asp:TextBox ID="userN" runat="server" placeholder="Username"></asp:TextBox>
				<asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
				<asp:TextBox ID="CreatePasswd" runat="server" placeholder="Create your Password" ></asp:TextBox>
				<asp:TextBox ID="confPassword" runat="server" placeholder="Confirm your Password"></asp:TextBox>
				<asp:Button CssClass="button" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click"/>
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

