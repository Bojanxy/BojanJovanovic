<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Z2.aspx.cs" Inherits="BojanJovanovic.Z2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Zadatak2</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Prikaz podataka pomocu DetailsView-a</h1>
            <p>&nbsp;</p>
            <p>Izaberite ID zaposlenog</p>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="BusinessEntityID" DataValueField="BusinessEntityID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2014ConnectionString %>" SelectCommand="SELECT [BusinessEntityID] FROM HumanResources.[Employee] ORDER BY [BusinessEntityID]"></asp:SqlDataSource>
            </p>
            <p>Podaci o zaposlenom</p>
            <p>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="BusinessEntityID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="BusinessEntityID" HeaderText="BusinessEntityID" ReadOnly="True" SortExpression="BusinessEntityID" />
                        <asp:BoundField DataField="OrganizationLevel" HeaderText="OrganizationLevel" ReadOnly="True" SortExpression="OrganizationLevel" />
                        <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
                        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                        <asp:BoundField DataField="MaritalStatus" HeaderText="MaritalStatus" SortExpression="MaritalStatus" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="HireDate" HeaderText="HireDate" SortExpression="HireDate" />
                        <asp:BoundField DataField="VacationHours" HeaderText="VacationHours" SortExpression="VacationHours" />
                        <asp:BoundField DataField="SickLeaveHours" HeaderText="SickLeaveHours" SortExpression="SickLeaveHours" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2014ConnectionString %>" SelectCommand="SELECT [BusinessEntityID], [OrganizationLevel], [JobTitle], [BirthDate], [MaritalStatus], [Gender], [HireDate], [VacationHours], [SickLeaveHours] FROM HumanResources.[Employee] WHERE ([BusinessEntityID] = @BusinessEntityID)" UpdateCommand="UPDATE HumanResources.[Employee] SET JobTitle=@JobTitle, MaritalStatus=@MaritalStatus WHERE ([BusinessEntityID] = @BusinessEntityID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="BusinessEntityID" PropertyName="SelectedValue" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="JobTitle" />
                        <asp:Parameter Name="MaritalStatus" />
                        <asp:Parameter Name="BusinessEntityID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
