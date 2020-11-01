<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BojanJovanovic.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prijava korisnika</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Prijava korisnika</h1>
            <p>&nbsp;</p>
            <p>
                <asp:Login ID="Login1" runat="server">
                </asp:Login>
            </p>
            <p>&nbsp;</p>
            <p><a href="Registracija.aspx">Registracija novog korisnika</a></p>
        </div>
    </form>
    <p>
        <a href="Generisanje.aspx">Generisanje nove lozinke</a></p>
</body>
</html>
