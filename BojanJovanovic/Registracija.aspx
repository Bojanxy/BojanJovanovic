<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registracija.aspx.cs" Inherits="BojanJovanovic.Registracija" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registracija</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Registracija novog korisnika</h1>
            <p>&nbsp;</p>
            <p>
                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/Login.aspx">
                    <WizardSteps>
                        <asp:CreateUserWizardStep runat="server" />
                        <asp:CompleteWizardStep runat="server" />
                    </WizardSteps>
                </asp:CreateUserWizard>
            </p>
        </div>
    </form>
</body>
</html>
