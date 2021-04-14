<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StarRatings.aspx.cs" Inherits="StarRatings" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br /><br />    <br /><br /><br /><br />    <br /><br /><br /><br />    <br /><br /><br /><br />    <br /><br /><br /><br />
    <style type="text/css">
        .Star{
            background-image:url(yamifood/images/download.gif);
            height:17px;
            width:17px;
        }
        .FilledStar{
            background-image:url(yamifood/images/FilledStars.gif);
            height:17px;
            height:17px;
        }
    </style>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   
    <asp:Rating ID="Rating1" runat="server" AutoPostBack="true"
        StarCssClass="Star" EmptyStarCssClass="Star" FilledStarCssClass="FilledStar">
    </asp:Rating>
    <br />





    <asp:Label ID="lblResults" runat="server" Text="Label"></asp:Label><br />
    <asp:TextBox ID="txtReview" runat="server" TextMode="MultiLine" ></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
</asp:Content>

