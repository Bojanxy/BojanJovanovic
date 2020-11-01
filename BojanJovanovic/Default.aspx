<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BojanJovanovic.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pocetna</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="RedirectToLoginPage" />
            <br />
            <br />
            <a href="Promena.aspx">Promena lozinke</a></div>
    </form>
</body>
</html>
