
<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
 .contactForm .inputBox span
 {
    position: absolute;
    left: 0;
    padding: 5px 0;
    font-size: 16px;
    margin: 10px 0;
    pointer-events: none;
    transition: 0.5s;
    trannsition: 0.5s;
    transition: 0.5s;
    color: #666;    
 }
 .contactForm .inputBox input:focus ~ span;
 .contactForm .inputBox input:valid ~ span;
 .contactForm .inputBox textarea:focus ~ span;
 .contactForm .inputBox textarea:focus ~ span;
 {
     color: #3498db;
     font-size: 12px;
     transform: translateY(-20px);
 }
 

 @media screen and (max-width:991px)
 {
   .contact
   {
     padding: 50px;
     height: auto;   
   } 
   .container-contact
   {
     flex-direction: column;    
   } 
   .container-contact .contactInfor
   {
     margin-bottom: 40px;    
   } 
   .container-contact .contactInfor, .contactForm
   {
      width: 100%;   
    } 
 }
</style>

<div class="all-page-title page-breadcrumb" style="height:50px;">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h3>CONTACT US</h3>
				</div>
			</div>
		</div>
	</div>
    <br /><br />
  <section class="contact" style="position: relative; min-height: 100vh; padding: 50px 100px; display: flex; justify-content: center; align-items: center; width: 1100px; background: #000; margin-left:120px; flex-direction: column;">
        <div class="container-contact" style="width:100%; display: flex; justify-content: center; align-items: center; margin-top: 30px;">
            <div class="contactInfor" style=" width: 50%; display: flex; flex-direction: column;">
                <div class="box-c" style="position:relative; padding: 20px 0; display: flex;">
                    <div class="icon" style="min-width: 60px;padding: 10px;padding-left: 22px; height: 60px; background: #fff; justify-content: center; align-items: center; border-radius: 50%;font-size:22px"><i class="fa fa-map-marker" style="color:Black"></i></div>
                    <div class="text" style="display: flex; margin-left: 20px; font-size: 16px; color: #fff; flex-direction: column; font-weight:300">
                        <h3 style="color:White;text-align:left; color: burlywood; font-size:18px; font-weight: 500;">Address</h3>
                        <p style="color:White; font-size:16px;">ikujytddfghjklkjhgfj</p>
                    </div>
                </div>
                <div class="box-c" style="position:relative; padding: 20px 0; display: flex;">
                    <div class="icon" style="min-width: 60px;padding: 10px;padding-left: 20px; height: 60px; background: #fff; justify-content: center; align-items: center; border-radius: 50%;font-size:22px"><i class="fa fa-phone" style="color:Black"></i></div>
                    <div class="text" style="display: flex; margin-left: 20px; font-size: 16px; color: #fff; flex-direction: column; font-weight:300">
                        <h3 style="color:#fff;text-align:left; font-size:18px; color: burlywood; font-weight: 500;">Phone</h3>
                        <p style="color:White; font-size:16px;">ikujytddfghjklkjhgfj</p>
                    </div>
                </div>
                <div class="box-c" style="position:relative; padding: 20px 0; display: flex;">
                    <div class="icon" style="min-width: 60px;padding: 10px;padding-left: 20px; height: 60px; background: #fff; justify-content: center; align-items: center; border-radius: 50%;font-size:22px"><i class="fa fa-envelope-o" style="color:Black"></i></div>
                    <div class="text" style="display: flex; margin-left: 20px; font-size: 16px; color: #fff; flex-direction: column; font-weight:300">
                        <h3 style="color:White;font-size:18px;text-align:left; color: burlywood; font-weight: 500;">Email</h3>
                        <p style="color:White; font-size:16px;">ikujytddfghjklkjhgfj</p>
                    </div>
                </div>
            </div>

             <div class="contactForm" style="width: 50%; padding: 50px; background:burlywood;">
               <form>
                 <h2 style="font-size: 30px; font-weight: 500;">Send Message</h2>
                 <div class="input-grp">
         <div class="input-box">
             <asp:TextBox ID="TextBox3" placeholder="Full Name(s)" required="required" class="name" runat="server"></asp:TextBox>
            <i class="fa fa-user icon"></i>
         </div>
      </div>
                 <div class="input-grp">
         <div class="input-box">
             <asp:TextBox ID="TextBox1" placeholder="Email" required="required" class="name" runat="server"></asp:TextBox>
            <i class="fa fa-envelope icon"></i>
         </div>
      </div>
      <div class="input-grp">
         <div class="input-box">
             <asp:TextBox ID="TextBox2" placeholder="Contact Number" required="required" class="name" runat="server"></asp:TextBox>
            <i class="fa fa-phone icon"></i>
         </div>
      </div>
      <div class="input-grp">
         <div class="input-box">
             <asp:TextBox ID="TextBox4" placeholder="Subject" required="required" class="name" runat="server"></asp:TextBox>
            <i class="fa fa-phone icon"></i>
         </div>
      </div>
      <div class="input-grp">
         <div class="input-box">
<asp:TextBox ID="TextBox5" placeholder="Type your message here....." required="required" style="width: 100%; text-indent: left;" runat="server"></asp:TextBox>
         </div>
      </div>
                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 <div class="inputBox" style="position: relative; width: 100%; margin-top: 10px;">
                    <asp:Button ID="Button1" runat="server" Text="Send" 
                         style="width:100px; background:gray; color: #fff; border: none; cursor: pointer; padding: 10px; font-size: 18px;" 
                         onclick="Button1_Click"></asp:Button>
                 </div>
               </form>
            </div>
        </div>
    </section>
    <br /><br />

</asp:Content>

