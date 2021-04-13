<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MainLogin.aspx.cs" Inherits="MainLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <br /><br /><br /><br />
    <br /><br />
<style>
         .wrapper
{
  background-color: #fff;
  width: 600px;
  padding: 25px;
  margin: 25px auto 0;
  box-shadow: 0px 0px 20px rgba(0,0,0,0.5);    
}
.wrapper h2
{
  background-color: #fcfcfc;
  color: brown;
  font-size: 24px;
  padding: 10px;
  margin-bottom: 20px;
  text-align: center;
  border: 1px dotted #333;    
}
    .step_progressbar li.active
{
 color: green; 
 font-weight: bold;   
}
.name:focus + .icon
{
  background-color: #7ed321;
  color: #fff;
  border-right: 1px solid #7ed321;  
  border: none;
  transition: 1s;  
}
.name
{
  padding: 14px 10px 14px 50px;
  width: 100%;
  padding-left: 8px;
  background-color: #fcfcfc;
  border: 1px solid #00000033;
  outline: none;
  letter-spacing: 1px;
  transition: 0.3s;
  color: #333;    
}
    </style>

  
    <div class="wrapper">
   <h2> LOGIN</h2>
   <form method="post">

      <div class="input-grp">
         <div class="input-box">
           <asp:TextBox ID="TextBox2" placeholder="username" required="required" class="name" runat="server"></asp:TextBox>
            <i class="fa fa-user icon"></i>
         </div>
      </div>
      <div class="input-grp">
         <div class="input-box">
         <asp:TextBox ID="TextBox1" placeholder="Password" required="required" class="name" runat="server"></asp:TextBox>
            <i class="fa fa-lock icon"></i>
         </div>
      </div>
      
      <div class="input-grp">
      <div class="input-box">
            <a href="#">Forgot password?</a>
         </div>
    </div>
      <div class="input-grp">
         <div class="input-box">
             
 <div class="input-grp">
         <div class="input-box">
            <asp:Button ID="Button1" runat="server" style="width: 100%; background: transparent; border: none; background: tan; color: #fff; padding:15px; border-radius: 4px; font-size: 16px; transition: all 0.35s ease;" Text="Login" />
         </div>
      </div>

         </div>
      </div><br /><br />
       <div class="input-grp">
         <div class="input-box">
             <asp:Label ID="Label1" runat="server" Text="Don't have an account?"></asp:Label>
         </div>
         <div class="input-box" style="text-align:center">
         <a href="#">Register</a>
         </div>
         </div>
   </form>
</div>
<br /><br />
</asp:Content>

