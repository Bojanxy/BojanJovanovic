<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BojanJovanovic.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <div>
            <h1>Zaposleni</h1>
            <p>&nbsp;</p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="BusinessEntityID" DataSourceID="SqlDataSource1" PageSize="12">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="BusinessEntityID" HeaderText="BusinessEntityID" ReadOnly="True" SortExpression="BusinessEntityID" />
                        <asp:BoundField DataField="PersonType" HeaderText="PersonType" SortExpression="PersonType" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
                    </Columns>
                    <SelectedRowStyle BackColor="#99CC00" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2014ConnectionString %>" SelectCommand="SELECT [BusinessEntityID], [PersonType], [Title], [FirstName], [MiddleName], [LastName], [ModifiedDate] FROM Person.Person" UpdateCommand="UPDATE Person.Person SET Title=@Title, MiddleName=@MiddleName WHERE BusinessEntityID=@BusinessEntityID">
                    <UpdateParameters>
                        <asp:Parameter Name="Title" />
                        <asp:Parameter Name="MiddleName" />
                        <asp:Parameter Name="BusinessEntityID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>

        </div>
        <p>
            Dodatni podaci o zaposlenom</p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="BusinessEntityID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="BusinessEntityID" HeaderText="BusinessEntityID" ReadOnly="True" SortExpression="BusinessEntityID" />
                    <asp:BoundField DataField="PasswordHash" HeaderText="PasswordHash" SortExpression="PasswordHash" />
                    <asp:BoundField DataField="PasswordSalt" HeaderText="PasswordSalt" SortExpression="PasswordSalt" />
                    <asp:BoundField DataField="rowguid" HeaderText="rowguid" SortExpression="rowguid" />
                    <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2014ConnectionString %>" SelectCommand="SELECT * FROM Person.[Password] WHERE ([BusinessEntityID] = @BusinessEntityID)" UpdateCommand="UPDATE Person.[Password] SET PasswordSalt=@PasswordSalt WHERE ([BusinessEntityID] = @BusinessEntityID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="BusinessEntityID" PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PasswordSalt" />
                    <asp:Parameter Name="BusinessEntityID" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </form>

</asp:Content>
