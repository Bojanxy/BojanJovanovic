<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Generisanje.aspx.cs" Inherits="BojanJovanovic.Generisanje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Generisanje</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Generisanje nove lozinke</h1>
            <p>&nbsp;</p>
            <p>
                <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" OnSendingMail="PasswordRecovery1_SendingMail">
                </asp:PasswordRecovery>
            </p>
            <p>&nbsp;</p>
        </div>
    </form>
    <p>
        <a href="Login.aspx">Prijava korisnika</a></p>
</body>
</html>
