﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MainLogin.aspx.cs" Inherits="MainLogin" %>

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

    </style>

  
    <div class="wrapper">
   <h2> LOGIN</h2>
   <form method="post">

      <div class="input-grp">
         <div class="input-box">
           <asp:TextBox ID="TextBox50" placeholder="username" required="required" CssClass="name"  runat="server"></asp:TextBox>
            <i class="fa fa-user icon"></i>
         </div>
      </div>
      <div class="input-grp">
         <div class="input-box">
         <asp:TextBox ID="TextBox1" placeholder="Password" required="required" class="name" runat="server"></asp:TextBox>
            <i class="fa fa-lock icon"></i>
         </div>
      </div>
      

            <a href="#">Forgot password?</a>

            <asp:Button ID="Button1" runat="server" style="width: 100%; background: transparent; border: none; background: tan; color: #fff; padding:15px; border-radius: 4px; font-size: 16px; transition: all 0.35s ease;" Text="Login" />
<br /><br />
             <asp:Label ID="Label1" runat="server" Text="Don't have an account?"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
         
         <a href="#" >Register</a>

   </form>
</div>
<br /><br />
</asp:Content>

