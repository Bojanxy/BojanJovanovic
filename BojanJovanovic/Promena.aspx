<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Promena.aspx.cs" Inherits="BojanJovanovic.Promena" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Promena</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Promena lozinke</h1>
            <p>&nbsp;</p>
            <p>
                <asp:ChangePassword ID="ChangePassword1" runat="server" CancelDestinationPageUrl="~/Default.aspx" ContinueDestinationPageUrl="~/Login.aspx">
                </asp:ChangePassword>
            </p>
        </div>
    </form>
</body>
</html>
