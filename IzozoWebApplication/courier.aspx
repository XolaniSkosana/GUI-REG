<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="courier.aspx.cs" Inherits="courier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br /><br />
	<style type="text/css">
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
   <h2> Courier Registration Form</h2>
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
                    <asp:Label ID="Label1" runat="server" Text="Full Name(s)"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label12" runat="server" Text="Contact Number"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>

                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Text="Will you be the one driving?"></asp:Label><br />
                    <asp:RadioButtonList ID="buttonlist1" runat="server">
                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                        <asp:ListItem Value="No">No</asp:ListItem>
                    </asp:RadioButtonList>
                   </td>
                <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style3">
                 <asp:Label ID="Label13" runat="server" style="font-weight: 700; font-size: x-large; text-align: justify;" Text="Business Details"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Are you a Courier Company?"></asp:Label><br />
                   </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                <asp:RadioButtonList ID="buttonlist2" runat="server" 
                        onselectedindexchanged="buttonlist2_SelectedIndexChanged">
                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                        <asp:ListItem Value="No">No</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Will you be delivering with your personal vehicle?"></asp:Label><br />
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left" class="auto-style3">
                <asp:RadioButtonList ID="buttonlist3" runat="server">
                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                        <asp:ListItem Value="No">No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label15" runat="server" Text="What is your vehicle type?"></asp:Label><br />
                    </td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style3">
                <asp:RadioButtonList ID="buttonlist4" runat="server">
                        <asp:ListItem Value="Motorbike">Motobike</asp:ListItem>
                        <asp:ListItem Value="Van">Van</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:Label ID="Label16" runat="server" Text="In which area/town will you be operating?"></asp:Label><br />
                    <asp:TextBox style="border:1px solid #456879; border-radius:5px; height: 22px; width: 350px;" ID="TextBox14" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="Register" Height="40px" Width="142px" CssClass="btn1" onclick="Button2_Click"  />
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
           
        </table>

    
    </div>
         </form>
      </div>
   

<br />
</asp:Content>

