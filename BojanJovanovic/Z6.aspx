<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Z6.aspx.cs" Inherits="BojanJovanovic.Z6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Knjiga utisaka</h1>
            <p>
                &nbsp;</p>
            <p>
                Ime:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                Email:
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            <p>
                Komentar:
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dodaj komentar" />
            </p>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p>
                &nbsp;</p>
            <p>
                Stanje konekcije pre izlaska iz using bloka:
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </p>
            <p>
                Stanje konekcije posle izlaska iz using bloka:
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
