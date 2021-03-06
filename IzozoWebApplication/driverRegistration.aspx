﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="driverRegistration.aspx.cs" Inherits="driverRegistration" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
</head>
<body>
<wrapper style="background-color: #fff; width: 600px; padding: 25px; margin: 25px auto 0; box-shadow: 0px 0px 20px rgba(0,0,0,0.5);"
<h2> Courier Registration Form</h2>
    <form class="form1" runat="server">
    <div>
<table class="auto-style1">
         <tr>
                <td style="text-align: justify" class="auto-style3">
                <asp:Label ID="Label8" runat="server" Text="1.Full Names"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                   <asp:Label ID="Label9" runat="server" Text="2.Email"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td style="text-align: justify" class="auto-style3">
                   <asp:Label ID="Label10" runat="server" Text="3.Contact Number"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style4">
                   <asp:Label ID="Label11" runat="server" Text="4.Will you be the one driving?"></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td style="text-align: justify" class="auto-style3">
                   <asp:RadioButton ID="RadioButton5" runat="server" Text="Yes" />
                     <asp:RadioButton ID="RadioButton6" runat="server" Text="No" />
                   <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: x-large; text-align: justify;" Text="Busines Details"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="1. Are you a Courier Company?"></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                <asp:RadioButton ID="Yes" runat="server" Text="Yes" />
                    <asp:RadioButton ID="No" runat="server" Text="No" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                 <asp:Label ID="Label4" runat="server" Text="2. Will you be delivering with your personal vehicle?"></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td style="text-align: left" class="auto-style3">
                <asp:RadioButton ID="RadioButton3" runat="server" Text="Yes" />
                    <asp:RadioButton ID="RadioButton4" runat="server" Text="No" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&
                <asp:Label ID="Label5" runat="server" style="text-align: center" Text="3. What is your vehicle type?"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Motobike" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Van" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="4. In which area/town will you be operating?"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" CssClass="tb5"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="btn1" Height="41px" Width="136px" />
                    <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="btn1" 
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
    </wrapper>
</body>
</html>



