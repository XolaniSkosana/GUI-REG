<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="Become a courier.aspx.cs" Inherits="Become_a_courier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h3>EARN FROM DELIVERIES</h3>
                    <asp:Button ID="Button2" CssClass="btn1" runat="server" Text="Sign up" OnClientClick="openPopup();return false;" />
				</div>
			</div>
		</div>
	</div>
<br />
<br />
 
   <h1>WHY BECOME A COURIER</h1>
   <div class="holdingcontainer">
      <div class="internalcontainnerL">
        <img src="yamifood/images/Capture09.png" width="350px" height="200px"  alt="" />
        <h2>Own your time </h2>
         <p>Choose to work full-time or part-time. </p>
      </div>
      <div class="internalcontainnerR">
        <img src="yamifood/images/Capture10.png" width="350px" height="200px"  alt="" />
        <h2>Earn from tips</h2>
         <p>Make extra cash from tips when you give good service. </p>
      </div>
      <div class="internalcontainnerML">
         <img src="yamifood/images/Capture11.png" width="350px" height="200px" alt="" />
         <h2>Day or night</h2>
         <p>YChoose your own shift and work after work if you want. </p>
      </div>
   </div>


   <h1>WHAT YOU NEED</h1>
   <div class="holdingcontainer">
      <div class="internalcontainnerL">
        <img src="yamifood/images/Capture12.png" width="250px" height="250px"  alt="" />
        <h2>Motorbike </h2>
         <p>You can use your bike to deliver our takeaway.</p>
      </div>
      <div class="internalcontainnerR">
        <img src="yamifood/images/Capture08.png" width="250px" height="250px"  alt="" />
        <h2>Van</h2>
         <p>You can use your van to deliver our grocery. </p>
      </div>
      <div class="internalcontainnerML">
         <img src="yamifood/images/Capture13.png" width="250px" height="250px" alt="" />
         <h2>Smartphone</h2>
         <p>Use your phone with internet connection to locate your deliveries.</p>
      </div>
      <div class="internalcontainnerMR">
         <img src="yamifood/images/Capture07.png" width="250px" height="250px" alt="" />
         <h2>License</h2>
        <p> Aclear criminal record and a drivers license.</p>
      </div>
   </div>
            <br />
       <h1>You won’t regret, get started!</h1>
       <center>
       <asp:Button ID="Button3" CssClass="btn1" runat="server" Text="Sign up" />
       </center>

 <script  type="text/javascript">
    /* function basicPopup() {
         //var popupWindow = window.open("D.aspx", 'popUpWindow', 'height=300,width=600,left=100,top=30,resizable=No,scrollbars=No,toolbar=no,menubar=no,location=no,directories=no, status=No');
         //var popupStyle = "dialogheight=300px;dialogwidth=450px;dialogleft:200px;dialogtop:200px;status:no;help:no;";
         //var var1 = window.showModalDialog(url, this, "D.aspx", popupStyle);
         var strReturn = window.showModalDialog("D.aspx", null,
         'status:no;dialogWidth:250px;dialogHeight:300px;dialogHide:true;help:no;scroll:yes');*/
     function openPopup() {

         window.open("D.aspx", "_blank", "WIDTH=1080,HEIGHT=790,scrollbars=no, menubar=no,resizable=yes,directories=no,location=no");  
               
     }
    /* function showpage1() {
         var mydiv = $('#poppage');
         mydiv.dialog({
             autoOpen: false, modal: true, title: 'My cool other page', width: '50%',
             position: { my: 'top', at: 'top+150' }
         });
         mydiv.load('D.aspx');
         // Open the dialog
         mydiv.dialog('open');
     }
     */
     /*function showPanel(panelID) {
         $panel = $('#' + panelID);
         $.ajax({
             url: "D.aspx",
             type: "GET",
             dataType: "html",
             async: false,
             data: {
                 "param": "abcd"
             },
             success: function (obj) {
                 // obj will contain the complete contents of the page requested
                 // use jquery to extract just the html inside the body tag
                 $content = $(obj).find('body').html();
                 // then update the dialog contents with this and show it
                 $panel.html($content);
                 $panel.dialog();
             }
         });
     }*/
 </script>
<br />
<br />
</asp:Content>

