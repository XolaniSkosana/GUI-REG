<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="shoppingCart.aspx.cs" Inherits="shoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            height: 29px;
            width: 186px;
        }
        .auto-style3 {
            width: 186px;
        }
        .auto-style4 {
            height: 29px;
            width: 309px;
        }
        .auto-style5 {
            width: 309px;
        }
        .btn2
    {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #d0a772;
            color: #fff;
            font-size: 16px;
            border-radius: 4px;
            font-weight: 600;
            line-height: 50px;
            display: inline-block;
            padding: 0 10px;
            width: 112px;
            height: 42px;
	        cursor: pointer;
            transition: all 0.5s ease-in-out;
            top: 0px;
            left: -2px;
        }
        .auto-style6 {
            height: 10px;
            width: 186px;
        }
        .auto-style7 {
            height: 10px;
            width: 309px;
        }
        .auto-style8 {
            height: 10px;
        }
        .auto-style9 {
            height: 48px;
            width: 186px;
        }
        .auto-style10 {
            height: 48px;
            width: 309px;
        }
        .auto-style11 {
            height: 48px;
        }
        .panel{
             vertical-align:auto;
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
    <asp:Label ID="Label7" runat="server" Text="YOUR CART (2 ITEMS)" ForeColor ="Black" Font-Bold ="true" Font-Size ="Larger" ></asp:Label>
    <table style="width: 50%;">
        <tr>
            <td class="auto-style6">
                <asp:Image ID="Image1" runat="server" Height="157px" ImageUrl="yamifood/images/joko.png" Width="173px" />
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" Text="JOKO REGULAR TAGLESS TEA BAGS" Font-Underline="true" ForeColor ="Black" Font-Bold ="true" Font-Size ="Medium"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Unit Price" ForeColor ="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" style="text-align: center" Text=":" ForeColor ="Black"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Total Price" ForeColor ="Black"></asp:Label>
                &nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" Text=":"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Size" ForeColor ="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label15" runat="server" Text=":" ForeColor ="Black"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Quantity" ForeColor ="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label16" runat="server" Text=":" ForeColor ="Black" style ="text-align:right"></asp:Label>
            </td>
            <td class="auto-style8">
                
            </td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">
                <asp:Button ID="Edit" runat="server" Text="Edit" CssClass ="btn2" BackColor="Gray" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Remove" CssClass ="btn2" BackColor="Gray" ForeColor="White" />
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Image ID="Image2" runat="server" Height ="157px" ImageUrl="yamifood/images/Honey.png" Width ="173px"/>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label8" runat="server" Text="LITTLE BEE HONEY" ForeColor ="Black" Font-Size ="Medium" Font-Bold ="true" Font-Underline ="true"></asp:Label>
                <br />
                <asp:Label ID="Label9" runat="server" Text="Unit Price" ForeColor ="Black"></asp:Label>
                <br />
                <asp:Label ID="Label10" runat="server" Text="Total Price" ForeColor ="Black"></asp:Label>
                <br />
                <asp:Label ID="Label12" runat="server" Text="Size" ForeColor ="Black"></asp:Label>
                <br />
                <asp:Label ID="Label11" runat="server" Text="Quantity" ForeColor ="Black"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button4" runat="server" BackColor="Gray" CssClass="btn2" Text="Edit" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" BackColor="Gray" CssClass="btn2" Text="Remove" />
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
            
    <br />
</asp:Content>

