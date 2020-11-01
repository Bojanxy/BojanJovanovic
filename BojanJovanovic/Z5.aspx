<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Z5.aspx.cs" Inherits="BojanJovanovic.Z5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SqlDataReader</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Koriscenje klase SqlDataReader</h1>
            <p>
                &nbsp;</p>
            <p>
                Unesite ID zaposlenog</p>
            <p>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Prikazi" />
            </p>
            <p>
                &nbsp;</p>
            <h2>Potvrda o zaposlenju</h2>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="___"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Text="___"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" Text="___"></asp:Label>
&nbsp;je zaposlen/a u kompaniji AdventureWorks od
                <asp:Label ID="Label4" runat="server" Text="___"></asp:Label>
&nbsp;na poziciji
                <asp:Label ID="Label5" runat="server" Text="___"></asp:Label>
                .</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
