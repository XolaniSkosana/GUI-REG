<%@ Page Title="" Language="C#" MasterPageFile="~/IzozoWebApplication/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="IzozoWebApplication_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br /><br />
	<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 1113px;
            text-align: right;
        }
        .auto-style3 {
            width: 1334px;
        }
        .auto-style4 {
            width: 1334px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        /* Rounded Corner */
    .tb5 {
	border:2px solid #456879;
	border-radius:10px;
	height: 22px;
	width: 350px;
   }
    .label{

         color: #fff;

    }
.btn1
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
            cursor: pointer;
            transition: all 0.5s ease-in-out;
            margin-left: 0px;
        }
        .auto-style6 {
            width: 1334px;
            height: 36px;
        }
        .auto-style7 {
            height: 36px;
        }
        .Background  
        {  
            background-color: Black;  
            filter: alpha(opacity=90);  
            opacity: 0.8;  
        }  
        .Popup  
        {  
            background-color: #FFFFFF;  
            border-width: 3px;  
            border-style: solid;  
            border-color: black;  
            padding-top: 10px;  
            padding-left: 10px;  
            width: 400px;  
            height: 350px;  
        }  
        .lbl  
        {  
            font-size:16px;  
            font-style:italic;  
            font-weight:bold;  
        }  
	</style>

       <div class="wrapper">
   <h2> Supplier Registration Form</h2>
   <form id="form1">
      <div>
        <table class="auto-style1">
        <tr>
                <td class="auto-style3">
                 <asp:Label ID="Label7" runat="server" style="font-weight: 700; font-size: x-large; text-align: justify;" Text="Personal Details"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Name(s)"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Text="Surname"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label12" runat="server" Text="Position"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Text="Cellphone"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Text="E-mail Address"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                 <asp:Label ID="Label13" runat="server" style="font-weight: 700; font-size: x-large; text-align: justify;" Text="Company Details"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Head office location"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Entity trade name"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Holding Company"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Entity VAT Number"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox10" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label11" runat="server" Text="Entity TAX Number"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox11" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label14" runat="server" Text="Entity Registration number"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox12" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label15" runat="server" Text="Holding Company Registration Number"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox13" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label16" runat="server" Text="Telephone Number"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox14" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label17" runat="server" Text="Fax Number"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox15" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                 <asp:Label ID="Label19" runat="server" style="font-weight: 700; font-size: x-large; text-align: justify;" Text="Core Services"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label20" runat="server" Text="Supplier Category"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox17" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label21" runat="server" Text="Describe your enquiry:"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox18" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="Register" CssClass="btn1" 
                        Height="40px" Width="142px" onclick="Button2_Click" />
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>

    
    </div>
         </form>
      </div>
   

<br />
</asp:Content>

