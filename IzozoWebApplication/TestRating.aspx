<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestRating.aspx.cs" Inherits="TestRating" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title>AJAX Rating Control</title>  
    <style type="text/css">      
        .ratingStar  
        {  
            font-size: 0pt;  
            width: 13px;  
            height: 12px;            
            cursor: pointer;  
            display: block;  
            background-repeat: no-repeat;  
        }  
        .filledStar  
        {  
            background-image: url(yamifood/images/FilledStar.gif);  
        }  
        .emptyStar  
        {  
            background-image: url(yamifood/images/download.gif);  
        }  
        .savedStar  
        {  
            background-image: url(yamifood/images/FilledStar.gif);  
        }  
        .auto-style1 {  
            height: 50px;  
        }  
    </style>  
</head>  
<body>  
    <form id="form1" runat="server">  
    <div>  
        <asp:ScriptManager ID="ToolkitScriptManager1" runat="server">  
        </asp:ScriptManager>  
        <table cellpadding="0" cellspacing="0" align="left" width="500" style="color: #333333; background-color: #F0F0F0">  
            <tr>  
                <td height="40" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small;">  
                     </td>  
            </tr>  
            <tr>  
                <td height="50" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small;">  
                    Rate My Article</td>  
            </tr>  
            <tr>  
                <td align="center" class="auto-style1" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small;">  
                    <asp:Rating ID="Rating1" runat="server" StarCssClass="ratingStar" WaitingStarCssClass="savedStar"  
                        FilledStarCssClass="filledStar" EmptyStarCssClass="emptyStar" AutoPostBack="true" CurrentRating="1" MaxRating="5"  
                        OnChanged="Rating1_Changed"></asp:Rating>  
                </td>  
            </tr>  
            <tr>  
                <td height="50" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small;">  
                    <asp:Label ID="lbl_point" runat="server"></asp:Label>  
                </td>  
            </tr>  
        </table>         
    </div>  
    </form>  
</body>  
</html>