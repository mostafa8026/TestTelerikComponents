<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestJava.aspx.cs" Inherits="TestWeb2.TestJava" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript" src="http://chapyar.com/js/jquery-1.8.3.min.js"></script>
    <title></title>
            <script type="text/javascript">
                function OpenWindow(sender, args) {
                    if (Page_IsValid) {
                        var RadWindow = $find("<%# RadWindow1.ClientID%>");
                        var s = document.getElementById("Textbox1").value;
                        alert(s);
                        RadWindow.setUrl($get("Textbox1").value);
                        RadWindow.show();
                    }
                    else {
                        alert("The page is not valid. Please enter a valid URL.");
                    }
                }
            </script>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager runat="server"></telerik:RadScriptManager>
        <span>URL:</span>
        <asp:TextBox ID="Textbox1" runat="server" />
        <asp:RegularExpressionValidator ID="regNavaigateUrl" runat="server" ForeColor="Red"
            ControlToValidate="Textbox1" ValidationGroup="UrlVG" SetFocusOnError="true"
            ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"
            ErrorMessage="Valid URL should start with <strong>http://</strong>">
        </asp:RegularExpressionValidator>
        <br />
        <telerik:RadButton ID="RadButton1" runat="server" Text="Open Window" OnClientClicked="OpenWindow"
            ValidationGroup="UrlVG" AutoPostBack="false">
        </telerik:RadButton>
        <telerik:RadWindow ID="RadWindow1" runat="server">
        </telerik:RadWindow>
    </form>
</body>
</html>
