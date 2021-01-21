<%@Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login"%>
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
                <asp:TextBox ID="txtLoginUsername" runat="server" placeholder="Username" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px; "></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtLoginUsername" Display="Dynamic" runat="server" ErrorMessage="Please enter username..!" ForeColor="red" Font-Bold="true"></asp:RequiredFieldValidator>

				<asp:TextBox ID="txtLoginPassword" runat="server" placeholder="Password" TextMode="Password" height="50" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtLoginPassword" Display="Dynamic" runat="server" ErrorMessage="Please enter password..!" ForeColor ="red" Font-Bold="true"></asp:RequiredFieldValidator>
                <asp:Button CssClass="login-button" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"  Width="250"  height="50"/>
                <asp:Label ID="lblLogin" runat="server" Text="LoginLabel" style="text-align:left; color:red; font-weight:bold" Visible="false"></asp:Label>
				<a href="#">Forgot password?</a>
			</div>
			<div class="register-show">
				<h2>REGISTER</h2>
                <asp:TextBox  ID="txtRegName" runat="server" placeholder="Name" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ForeColor="red" Font-Bold="true" Display="Dynamic" ControlToValidate="txtRegName" ErrorMessage="Please enter name..!"></asp:RequiredFieldValidator>

				<asp:TextBox ID="txtRegSurname" runat="server" placeholder="Surname" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="red" Font-Bold="true" Display="Dynamic" ControlToValidate="txtRegSurname" ErrorMessage="Please enter surname..!"></asp:RequiredFieldValidator>

				<asp:TextBox ID="txtRegUsername" runat="server" placeholder="Username" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="red" Font-Bold="true" Display="Dynamic" ControlToValidate="txtRegUsername" ErrorMessage="Enter your username."></asp:RequiredFieldValidator>

				<asp:TextBox ID="txtRegEmail" runat="server" placeholder="Email" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="red" Font-Bold="true" Display="Dynamic" ControlToValidate="txtRegEmail" ErrorMessage="Please enter email..!"></asp:RequiredFieldValidator>

				<asp:TextBox ID="txtRegPhoneNo" runat="server" placeholder="Cellphone Number" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="red" Font-Bold="true" Display="Dynamic" ControlToValidate="txtRegPhoneNo"  ErrorMessage="10 digits expected." ValidationExpression="0-9"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="red" Font-Bold="true" Display="Dynamic" ControlToValidate="txtRegPhoneNo" ErrorMessage="Please enter phone number..!"></asp:RequiredFieldValidator>
                

				<asp:TextBox ID="txtRegPassword" runat="server" placeholder="Create your Password" TextMode="Password" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="red" Font-Bold="true" Display="Dynamic" ControlToValidate="txtRegPassword" ErrorMessage="Password must be between 4-10 characters" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{4,10}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="red" Font-Bold="true" Display="Dynamic" ControlToValidate="txtRegPhoneNo" ErrorMessage="Please enter password..!"></asp:RequiredFieldValidator>

				<asp:TextBox ID="txtRegConfPassword" runat="server" placeholder="Confirm your Password" TextMode ="Password" style="border-bottom-left-radius:3px; border-top-left-radius:3px; border-bottom-right-radius:3px; border-top-right-radius:3px;"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server"  ControlToValidate="txtRegConfPassword" ControlToCompare="txtRegPassword" ErrorMessage="Passwords do not match..!"></asp:CompareValidator>

				<asp:Button CssClass="reg-button" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" Width="250" height="50"/>
                <asp:Label ID="lblReg" runat="server" Text="regLabel"  style="text-align:left; color:red; font-weight:bold" Visible="false" OnLoad="btnRegister_Click"  ></asp:Label>
              
			</div>
		</div>
	</div>
    <div>
        <asp:Label ID="testDB" runat="server" Text="Label"></asp:Label></div>

	<script>
	    $(document).ready(function () {
	        $('.login-info-box').fadeOut();
	        $('.login-show').addClass('show-log-panel');
	    });


	    $('.login-reg-panel input[type="radio"]').on('change', function () {
	        if ($('#log-login-show').is(':checked')) {
	            $('.register-info-box').fadeOut();
	            $('.login-info-box').fadeIn();

	            $('.white-panel').addClass('right-log');
	            $('.register-show').addClass('show-log-panel');
	            $('.login-show').removeClass('show-log-panel');

	        }
	        else if ($('#log-reg-show').is(':checked')) {
	            $('.register-info-box').fadeIn();
	            $('.login-info-box').fadeOut();

	            $('.white-panel').removeClass('right-log');

	            $('.login-show').addClass('show-log-panel');
	            $('.register-show').removeClass('show-log-panel');
	        }
	    });
    </script>

	
	
	
	

</asp:Content>

