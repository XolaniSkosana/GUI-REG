<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Testing.aspx.cs" Inherits="Testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="custID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    custID:
                    <asp:Label ID="custIDLabel1" runat="server" Text='<%# Eval("custID") %>' />
                    <br />
                    custName:
                    <asp:TextBox ID="custNameTextBox" runat="server" Text='<%# Bind("custName") %>' />
                    <br />
                    custSurname:
                    <asp:TextBox ID="custSurnameTextBox" runat="server" Text='<%# Bind("custSurname") %>' />
                    <br />
                    custPhoneNo:
                    <asp:TextBox ID="custPhoneNoTextBox" runat="server" Text='<%# Bind("custPhoneNo") %>' />
                    <br />
                    custUsername:
                    <asp:TextBox ID="custUsernameTextBox" runat="server" Text='<%# Bind("custUsername") %>' />
                    <br />
                    custPassword:
                    <asp:TextBox ID="custPasswordTextBox" runat="server" Text='<%# Bind("custPassword") %>' />
                    <br />
                    custStreetName:
                    <asp:TextBox ID="custStreetNameTextBox" runat="server" Text='<%# Bind("custStreetName") %>' />
                    <br />
                    custTown:
                    <asp:TextBox ID="custTownTextBox" runat="server" Text='<%# Bind("custTown") %>' />
                    <br />
                    custCity:
                    <asp:TextBox ID="custCityTextBox" runat="server" Text='<%# Bind("custCity") %>' />
                    <br />
                    custStandNo:
                    <asp:TextBox ID="custStandNoTextBox" runat="server" Text='<%# Bind("custStandNo") %>' />
                    <br />
                    custUnitNo:
                    <asp:TextBox ID="custUnitNoTextBox" runat="server" Text='<%# Bind("custUnitNo") %>' />
                    <br />
                    custPostCode:
                    <asp:TextBox ID="custPostCodeTextBox" runat="server" Text='<%# Bind("custPostCode") %>' />
                    <br />
                    custEmail:
                    <asp:TextBox ID="custEmailTextBox" runat="server" Text='<%# Bind("custEmail") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    custName:
                    <asp:TextBox ID="custNameTextBox" runat="server" Text='<%# Bind("custName") %>' />
                    <br />
                    custSurname:
                    <asp:TextBox ID="custSurnameTextBox" runat="server" Text='<%# Bind("custSurname") %>' />
                    <br />
                    custPhoneNo:
                    <asp:TextBox ID="custPhoneNoTextBox" runat="server" Text='<%# Bind("custPhoneNo") %>' />
                    <br />
                    custUsername:
                    <asp:TextBox ID="custUsernameTextBox" runat="server" Text='<%# Bind("custUsername") %>' />
                    <br />
                    custPassword:
                    <asp:TextBox ID="custPasswordTextBox" runat="server" Text='<%# Bind("custPassword") %>' />
                    <br />
                    custStreetName:
                    <asp:TextBox ID="custStreetNameTextBox" runat="server" Text='<%# Bind("custStreetName") %>' />
                    <br />
                    custTown:
                    <asp:TextBox ID="custTownTextBox" runat="server" Text='<%# Bind("custTown") %>' />
                    <br />
                    custCity:
                    <asp:TextBox ID="custCityTextBox" runat="server" Text='<%# Bind("custCity") %>' />
                    <br />
                    custStandNo:
                    <asp:TextBox ID="custStandNoTextBox" runat="server" Text='<%# Bind("custStandNo") %>' />
                    <br />
                    custUnitNo:
                    <asp:TextBox ID="custUnitNoTextBox" runat="server" Text='<%# Bind("custUnitNo") %>' />
                    <br />
                    custPostCode:
                    <asp:TextBox ID="custPostCodeTextBox" runat="server" Text='<%# Bind("custPostCode") %>' />
                    <br />
                    custEmail:
                    <asp:TextBox ID="custEmailTextBox" runat="server" Text='<%# Bind("custEmail") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    custID:
                    <asp:Label ID="custIDLabel" runat="server" Text='<%# Eval("custID") %>' />
                    <br />
                    custName:
                    <asp:Label ID="custNameLabel" runat="server" Text='<%# Bind("custName") %>' />
                    <br />
                    custSurname:
                    <asp:Label ID="custSurnameLabel" runat="server" Text='<%# Bind("custSurname") %>' />
                    <br />
                    custPhoneNo:
                    <asp:Label ID="custPhoneNoLabel" runat="server" Text='<%# Bind("custPhoneNo") %>' />
                    <br />
                    custUsername:
                    <asp:Label ID="custUsernameLabel" runat="server" Text='<%# Bind("custUsername") %>' />
                    <br />
                    custPassword:
                    <asp:Label ID="custPasswordLabel" runat="server" Text='<%# Bind("custPassword") %>' />
                    <br />
                    custStreetName:
                    <asp:Label ID="custStreetNameLabel" runat="server" Text='<%# Bind("custStreetName") %>' />
                    <br />
                    custTown:
                    <asp:Label ID="custTownLabel" runat="server" Text='<%# Bind("custTown") %>' />
                    <br />
                    custCity:
                    <asp:Label ID="custCityLabel" runat="server" Text='<%# Bind("custCity") %>' />
                    <br />
                    custStandNo:
                    <asp:Label ID="custStandNoLabel" runat="server" Text='<%# Bind("custStandNo") %>' />
                    <br />
                    custUnitNo:
                    <asp:Label ID="custUnitNoLabel" runat="server" Text='<%# Bind("custUnitNo") %>' />
                    <br />
                    custPostCode:
                    <asp:Label ID="custPostCodeLabel" runat="server" Text='<%# Bind("custPostCode") %>' />
                    <br />
                    custEmail:
                    <asp:Label ID="custEmailLabel" runat="server" Text='<%# Bind("custEmail") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:izozoWebConnectionString %>" ProviderName="<%$ ConnectionStrings:izozoWebConnectionString.ProviderName %>" SelectCommand="SELECT tblcustomer.* FROM tblcustomer"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
