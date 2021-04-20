<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="MainReg.aspx.cs" Inherits="MainReg" %>

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
li.active + li:after
{
  background-color: Green;    
}
.step_progressbar + li.active:before
{
  background-color: Green;
  color: #fff;   
}
    </style>

  
    <div class="wrapper">
   <h2>Register</h2>
   <form method="post">

      <div class="input-grp">
         <div class="input-box">
         <asp:TextBox ID="TextBox50" placeholder="Last Name" required="required" CssClass="name"  runat="server"></asp:TextBox>
            <i class="fa fa-user icon"></i>
         </div>
        <!-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Last Name is required" ControlToValidate="TextBox50" ForeColor="Red"></asp:RequiredFieldValidator>-->
         </div>
         <div class="input-grp">
         <div class="input-box">
             <asp:TextBox ID="TextBox1" placeholder="First Name" required="required" CssClass="name" runat="server"></asp:TextBox>
            <i class="fa fa-user icon"></i>
         </div>
         <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="First Name is required" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>-->
         </div>
      <div class="input-grp">
         <div class="input-box">
             <asp:TextBox ID="TextBox2"  placeholder="Username" required="required" CssClass="name" runat="server"></asp:TextBox>
            <i class="fa fa-user icon"></i>
         </div>
        <!--  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Username is required" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>-->
      </div>
      <div class="input-grp">
         <div class="input-box">
             <asp:TextBox ID="TextBox3" placeholder="Email" required="required" CssClass="name" runat="server"></asp:TextBox>
            <i class="fa fa-envelope icon"></i>
         </div>
          <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is required" ForeColor="Red" ControlToValidate="Textbox3"></asp:RequiredFieldValidator>-->
      </div>
      <div class="input-grp">
         <div class="input-box">
             <asp:TextBox ID="TextBox4" placeholder="Cellphone Number" required="required" CssClass="name" runat="server"></asp:TextBox>
            <i class="fa fa-phone icon"></i>
         </div>
          <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Cellphone is required" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>-->
      </div>
      <div class="input-grp">
         <div class="input-box">
             <asp:TextBox ID="TextBox5" placeholder="Password" required="required" CssClass="name" runat="server" TextMode="Password"></asp:TextBox>
            <i class="fa fa-lock icon"></i>
         </div>
          <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password is required"  ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>-->
      </div>
      <div class="input-grp">
         <div class="input-box">
             <asp:TextBox ID="TextBox6" placeholder="Confirm Password" required="required" CssClass="name" runat="server" TextMode="Password"></asp:TextBox>
            <i class="fa fa-lock icon"></i>
         </div>
          <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Confirm password is required" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>-->
          
          </div>
       <br />
          <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ></asp:CompareValidator>
      
      
             
 <asp:Button ID="Button1" runat="server" style="width: 100%; background: transparent; border: none; background: tan; color: #fff; padding:15px; border-radius: 4px; font-size: 16px; transition: all 0.35s ease;" Text="Register" OnClick="Button1_Click" />
      <br /><br />
 
             <asp:Label ID="Label1" runat="server" Text="Already have an account?"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
         <a href="MainLogin.aspx">Login</a>

  
   </form>
</div>


<br />
</asp:Content>

