<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Z3.aspx.cs" Inherits="BojanJovanovic.Z3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Zadatak3</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Prikaz podataka pomocu FormView-a</h1>
            <p>&nbsp;</p>
            <p>Izaberite ID zaposlenog</p>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="BusinessEntityID" DataValueField="BusinessEntityID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2014ConnectionString %>" SelectCommand="SELECT [BusinessEntityID] FROM HumanResources.[Employee] ORDER BY [BusinessEntityID]"></asp:SqlDataSource>
            </p>
            <p>Podaci o zaposlenom</p>
            <p>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="BusinessEntityID" DataSourceID="SqlDataSource2">
                    <EditItemTemplate>
                        BusinessEntityID:
                        <asp:Label ID="BusinessEntityIDLabel1" runat="server" Text='<%# Eval("BusinessEntityID") %>' />
                        <br />
                        OrganizationLevel:
                        <asp:TextBox ID="OrganizationLevelTextBox" runat="server" Text='<%# Bind("OrganizationLevel") %>' />
                        <br />
                        JobTitle:
                        <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
                        <br />
                        BirthDate:
                        <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
                        <br />
                        MaritalStatus:
                        <asp:TextBox ID="MaritalStatusTextBox" runat="server" Text='<%# Bind("MaritalStatus") %>' />
                        <br />
                        Gender:
                        <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                        <br />
                        HireDate:
                        <asp:TextBox ID="HireDateTextBox" runat="server" Text='<%# Bind("HireDate") %>' />
                        <br />
                        VacationHours:
                        <asp:TextBox ID="VacationHoursTextBox" runat="server" Text='<%# Bind("VacationHours") %>' />
                        <br />
                        SickLeaveHours:
                        <asp:TextBox ID="SickLeaveHoursTextBox" runat="server" Text='<%# Bind("SickLeaveHours") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        BusinessEntityID:
                        <asp:TextBox ID="BusinessEntityIDTextBox" runat="server" Text='<%# Bind("BusinessEntityID") %>' />
                        <br />
                        OrganizationLevel:
                        <asp:TextBox ID="OrganizationLevelTextBox" runat="server" Text='<%# Bind("OrganizationLevel") %>' />
                        <br />
                        JobTitle:
                        <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
                        <br />
                        BirthDate:
                        <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
                        <br />
                        MaritalStatus:
                        <asp:TextBox ID="MaritalStatusTextBox" runat="server" Text='<%# Bind("MaritalStatus") %>' />
                        <br />
                        Gender:
                        <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                        <br />
                        HireDate:
                        <asp:TextBox ID="HireDateTextBox" runat="server" Text='<%# Bind("HireDate") %>' />
                        <br />
                        VacationHours:
                        <asp:TextBox ID="VacationHoursTextBox" runat="server" Text='<%# Bind("VacationHours") %>' />
                        <br />
                        SickLeaveHours:
                        <asp:TextBox ID="SickLeaveHoursTextBox" runat="server" Text='<%# Bind("SickLeaveHours") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        BusinessEntityID:
                        <asp:Label ID="BusinessEntityIDLabel" runat="server" Text='<%# Eval("BusinessEntityID") %>' />
                        <br />
                        OrganizationLevel:
                        <asp:Label ID="OrganizationLevelLabel" runat="server" Text='<%# Bind("OrganizationLevel") %>' />
                        <br />
                        JobTitle:
                        <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Bind("JobTitle") %>' />
                        <br />
                        BirthDate:
                        <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Bind("BirthDate") %>' />
                        <br />
                        MaritalStatus:
                        <asp:Label ID="MaritalStatusLabel" runat="server" Text='<%# Bind("MaritalStatus") %>' />
                        <br />
                        Gender:
                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                        <br />
                        HireDate:
                        <asp:Label ID="HireDateLabel" runat="server" Text='<%# Bind("HireDate") %>' />
                        <br />
                        VacationHours:
                        <asp:Label ID="VacationHoursLabel" runat="server" Text='<%# Bind("VacationHours") %>' />
                        <br />
                        SickLeaveHours:
                        <asp:Label ID="SickLeaveHoursLabel" runat="server" Text='<%# Bind("SickLeaveHours") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    </ItemTemplate>
                </asp:FormView>
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

