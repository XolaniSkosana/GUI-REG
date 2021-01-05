<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart2.aspx.cs" Inherits="ShoppingCart2" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .label{
                font-weight: bold;
                vertical-align:top;

              }
        .textbox{

                   background: transparent;
                   border:none;
                   border-bottom: 1px solid #000000;
        }
        .advancedSearchTextbox {
                  width: 526px;
                  margin-right: -4px;
                }
        
        .auto-style1 {
            width: 306px;
            height: 50px;
        }
        
        .auto-style2 {
            width: 886px;
        }
        
        .auto-style3 {
            width: 1432px;
        }
        
    </style>


        <!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h3>NEED MORE?</h3>
                    <asp:Button ID="Button1" CssClass="btn1" runat="server" Text="Shop More" />
				</div>
			</div>
		</div>
       
	</div>
	<!-- End All Pages -->
     <br />

        <table class="w-100">
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label25" runat="server" Text="YOUR CART (2 ITEMS)" Font-Bold ="true" ForeColor ="Black" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            </table>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style3"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblDescription" runat="server" Text="JOKO REGULAR TAGLESS TEA BAGS" ForeColor="Black" Font-Bold ="True" Font-Underline ="True" CssClass="label"></asp:Label>
                <br />
                <br />
                                                                                                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                                                                                                  <asp:Label ID="lblPrice" runat="server" Text="Unit Price    :" style="text-align: justify" ForeColor="Black"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image3" runat="server" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTotalPrice" runat="server" Text="Total Price  :" ForeColor="Black"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSize" runat="server" Text="Size     :" ForeColor="Black"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblQuantity" runat="server" Text="Quantity :  " ForeColor="Black"></asp:Label>
                <br /> 
                <br />
                                               <asp:Image ID="Image2" runat="server" Height="173px" ImageUrl="yamifood/images/Honey.png" Width ="174px" /><asp:Label ID="lblDescription2" runat="server" Text="LITTLE BEE HONEY" ForeColor ="Black" Font-Bold ="True" Font-Underline ="True" CssClass="label"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label27" runat="server" Text="Unit Price    :"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label26" runat="server" Text="Total Price  :"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label28" runat="server" Text="Size    :"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label29" runat="server" Text="Quantity    :"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td><asp:Panel ID="Panel2" runat="server" BackColor="Gray" Width="350px" Height="453px" style="text-align: justify; margin-left: 0px;" HorizontalAlign="Left">
        <asp:Label ID="Label13" runat="server" Text="Order Summary" Font-Size ="Larger" Font-Bold ="true" ForeColor ="Black"></asp:Label>
        <br />
        <asp:Label ID="Label14" runat="server" Text=" If you have a promo code please enter it below" ForeColor ="Black"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" ></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Text="Subtotal :" ForeColor ="Black"></asp:Label><asp:Label ID="Label16" runat="server" Text="R?" ForeColor ="Black"></asp:Label>
        <br />
        <asp:Label ID="Label17" runat="server" Text="Delivery Fee :" ForeColor ="Black"></asp:Label><asp:Label ID="Label18" runat="server" Text="R?" ForeColor ="Black"></asp:Label>
        <br />
        <asp:Label ID="Label19" runat="server" Text="Service Fee :" ForeColor ="Black"></asp:Label><asp:Label ID="Label20" runat="server" Text="R?" ForeColor ="Black"></asp:Label>
        <br />
        <asp:Label ID="Label21" runat="server" Text="Total :" ForeColor ="Black" Font-Bold ="true"></asp:Label><asp:Label ID="Label22" runat="server" Text="R?" ForeColor ="Black"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label23" runat="server" Text="Get Delivery for items over R900" ForeColor ="Black"></asp:Label>
        <br />
        <asp:Button ID="Button3"  CssClass="btn1" runat="server" Text="Checkout"  />
        <br />
        <br />
        <asp:Label ID="Label24" runat="server" Text="Accepted Payment Methods" Font-Bold ="true" ForeColor ="Black"></asp:Label>
        <br />
        <img class="auto-style1" src="yamifood/images/cards-.jpg" align="Centre" />

        </asp:Panel>
                
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"> &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">           &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">           &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">           &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">           &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
<br />
   <!--  <asp:Panel ID="Panel1" runat="server" BackColor="Gray" Width="350px" Height="465px" style="text-align: justify">
        <asp:Label ID="Label1" runat="server" Text="Order Summary" Font-Size ="Larger" Font-Bold ="true" ForeColor ="Black"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="If you have a promo code please enter it below" ForeColor ="Black"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" ></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Subtotal :" ForeColor ="Black"></asp:Label><asp:Label ID="Label4" runat="server" Text="R?" ForeColor ="Black"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Delivery Fee :" ForeColor ="Black"></asp:Label><asp:Label ID="Label6" runat="server" Text="R?" ForeColor ="Black"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Service Fee :" ForeColor ="Black"></asp:Label><asp:Label ID="Label8" runat="server" Text="R?" ForeColor ="Black"></asp:Label>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Total :" ForeColor ="Black" Font-Bold ="true"></asp:Label><asp:Label ID="Label10" runat="server" Text="R?" ForeColor ="Black"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Get Delivery for items over R900" ForeColor ="Black"></asp:Label>
        <br />
        <asp:Button ID="Button2"  CssClass="btn1" runat="server" Text="Checkout" />
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="Accepted Payment Methods" Font-Bold ="true" ForeColor ="Black"></asp:Label>
        <br />
        <img class="auto-style1" src="images/cards-.jpg" />

        </asp:Panel>-->
<br />
</asp:Content>



