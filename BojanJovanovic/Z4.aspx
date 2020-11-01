<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Z4.aspx.cs" Inherits="BojanJovanovic.Z4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Zadatak4</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Prikaz podataka pomocu ListView-a</h1>
            <p>&nbsp;</p>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="BusinessEntityID" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color:#FFF8DC;">BusinessEntityID:
                        <asp:Label ID="BusinessEntityIDLabel" runat="server" Text='<%# Eval("BusinessEntityID") %>' />
                        <br />
                        Title:
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                        <br />
                        FirstName:
                        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                        <br />
                        MiddleName:
                        <asp:Label ID="MiddleNameLabel" runat="server" Text='<%# Eval("MiddleName") %>' />
                        <br />
                        LastName:
                        <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                        <br />
                        ModifiedDate:
                        <asp:Label ID="ModifiedDateLabel" runat="server" Text='<%# Eval("ModifiedDate") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">BusinessEntityID:
                        <asp:Label ID="BusinessEntityIDLabel1" runat="server" Text='<%# Eval("BusinessEntityID") %>' />
                        <br />
                        Title:
                        <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                        <br />
                        FirstName:
                        <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                        <br />
                        MiddleName:
                        <asp:TextBox ID="MiddleNameTextBox" runat="server" Text='<%# Bind("MiddleName") %>' />
                        <br />
                        LastName:
                        <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                        <br />
                        ModifiedDate:
                        <asp:TextBox ID="ModifiedDateTextBox" runat="server" Text='<%# Bind("ModifiedDate") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">BusinessEntityID:
                        <asp:TextBox ID="BusinessEntityIDTextBox" runat="server" Text='<%# Bind("BusinessEntityID") %>' />
                        <br />Title:
                        <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                        <br />FirstName:
                        <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                        <br />MiddleName:
                        <asp:TextBox ID="MiddleNameTextBox" runat="server" Text='<%# Bind("MiddleName") %>' />
                        <br />LastName:
                        <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                        <br />ModifiedDate:
                        <asp:TextBox ID="ModifiedDateTextBox" runat="server" Text='<%# Bind("ModifiedDate") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color:#DCDCDC;color: #000000;">BusinessEntityID:
                        <asp:Label ID="BusinessEntityIDLabel" runat="server" Text='<%# Eval("BusinessEntityID") %>' />
                        <br />
                        Title:
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                        <br />
                        FirstName:
                        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                        <br />
                        MiddleName:
                        <asp:Label ID="MiddleNameLabel" runat="server" Text='<%# Eval("MiddleName") %>' />
                        <br />
                        LastName:
                        <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                        <br />
                        ModifiedDate:
                        <asp:Label ID="ModifiedDateLabel" runat="server" Text='<%# Eval("ModifiedDate") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </table>
                    <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">BusinessEntityID:
                        <asp:Label ID="BusinessEntityIDLabel" runat="server" Text='<%# Eval("BusinessEntityID") %>' />
                        <br />
                        Title:
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                        <br />
                        FirstName:
                        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                        <br />
                        MiddleName:
                        <asp:Label ID="MiddleNameLabel" runat="server" Text='<%# Eval("MiddleName") %>' />
                        <br />
                        LastName:
                        <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                        <br />
                        ModifiedDate:
                        <asp:Label ID="ModifiedDateLabel" runat="server" Text='<%# Eval("ModifiedDate") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2014ConnectionString %>" SelectCommand="SELECT [BusinessEntityID], [Title], [FirstName], [MiddleName], [LastName], [ModifiedDate] FROM [Person].Person" UpdateCommand="UPDATE [Person].Person SET Title=@Title WHERE BusinessEntityID=@BusinessEntityID">
                    <UpdateParameters>
                        <asp:Parameter Name="Title" />
                        <asp:Parameter Name="BusinessEntityID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p>&nbsp;</p>
            <p>Izaberite ID zaposlenog</p>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="BusinessEntityID" DataValueField="BusinessEntityID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2014ConnectionString %>" SelectCommand="SELECT [BusinessEntityID] FROM HumanResources.[Employee] ORDER BY [BusinessEntityID]"></asp:SqlDataSource>
            </p>
            <p>Podaci o zaposlenom</p>
            <p>
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="BusinessEntityID" DataSourceID="SqlDataSource3" GroupItemCount="3">
                    <AlternatingItemTemplate>
                        <td runat="server" style="background-color:#FFF8DC;">BusinessEntityID:
                            <asp:Label ID="BusinessEntityIDLabel" runat="server" Text='<%# Eval("BusinessEntityID") %>' />
                            <br />OrganizationLevel:
                            <asp:Label ID="OrganizationLevelLabel" runat="server" Text='<%# Eval("OrganizationLevel") %>' />
                            <br />JobTitle:
                            <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
                            <br />BirthDate:
                            <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Eval("BirthDate") %>' />
                            <br />MaritalStatus:
                            <asp:Label ID="MaritalStatusLabel" runat="server" Text='<%# Eval("MaritalStatus") %>' />
                            <br />Gender:
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                            <br />HireDate:
                            <asp:Label ID="HireDateLabel" runat="server" Text='<%# Eval("HireDate") %>' />
                            <br />VacationHours:
                            <asp:Label ID="VacationHoursLabel" runat="server" Text='<%# Eval("VacationHours") %>' />
                            <br />SickLeaveHours:
                            <asp:Label ID="SickLeaveHoursLabel" runat="server" Text='<%# Eval("SickLeaveHours") %>' />
                            <br />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            <br /></td>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">BusinessEntityID:
                            <asp:Label ID="BusinessEntityIDLabel1" runat="server" Text='<%# Eval("BusinessEntityID") %>' />
                            <br />OrganizationLevel:
                            <asp:TextBox ID="OrganizationLevelTextBox" runat="server" Text='<%# Bind("OrganizationLevel") %>' />
                            <br />JobTitle:
                            <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
                            <br />BirthDate:
                            <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
                            <br />MaritalStatus:
                            <asp:TextBox ID="MaritalStatusTextBox" runat="server" Text='<%# Bind("MaritalStatus") %>' />
                            <br />Gender:
                            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                            <br />HireDate:
                            <asp:TextBox ID="HireDateTextBox" runat="server" Text='<%# Bind("HireDate") %>' />
                            <br />VacationHours:
                            <asp:TextBox ID="VacationHoursTextBox" runat="server" Text='<%# Bind("VacationHours") %>' />
                            <br />SickLeaveHours:
                            <asp:TextBox ID="SickLeaveHoursTextBox" runat="server" Text='<%# Bind("SickLeaveHours") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            <br /></td>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
<td runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <InsertItemTemplate>
                        <td runat="server" style="">BusinessEntityID:
                            <asp:TextBox ID="BusinessEntityIDTextBox" runat="server" Text='<%# Bind("BusinessEntityID") %>' />
                            <br />OrganizationLevel:
                            <asp:TextBox ID="OrganizationLevelTextBox" runat="server" Text='<%# Bind("OrganizationLevel") %>' />
                            <br />JobTitle:
                            <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
                            <br />BirthDate:
                            <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
                            <br />MaritalStatus:
                            <asp:TextBox ID="MaritalStatusTextBox" runat="server" Text='<%# Bind("MaritalStatus") %>' />
                            <br />Gender:
                            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                            <br />HireDate:
                            <asp:TextBox ID="HireDateTextBox" runat="server" Text='<%# Bind("HireDate") %>' />
                            <br />VacationHours:
                            <asp:TextBox ID="VacationHoursTextBox" runat="server" Text='<%# Bind("VacationHours") %>' />
                            <br />SickLeaveHours:
                            <asp:TextBox ID="SickLeaveHoursTextBox" runat="server" Text='<%# Bind("SickLeaveHours") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            <br /></td>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <td runat="server" style="background-color:#DCDCDC;color: #000000;">BusinessEntityID:
                            <asp:Label ID="BusinessEntityIDLabel" runat="server" Text='<%# Eval("BusinessEntityID") %>' />
                            <br />OrganizationLevel:
                            <asp:Label ID="OrganizationLevelLabel" runat="server" Text='<%# Eval("OrganizationLevel") %>' />
                            <br />JobTitle:
                            <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
                            <br />BirthDate:
                            <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Eval("BirthDate") %>' />
                            <br />MaritalStatus:
                            <asp:Label ID="MaritalStatusLabel" runat="server" Text='<%# Eval("MaritalStatus") %>' />
                            <br />Gender:
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                            <br />HireDate:
                            <asp:Label ID="HireDateLabel" runat="server" Text='<%# Eval("HireDate") %>' />
                            <br />VacationHours:
                            <asp:Label ID="VacationHoursLabel" runat="server" Text='<%# Eval("VacationHours") %>' />
                            <br />SickLeaveHours:
                            <asp:Label ID="SickLeaveHoursLabel" runat="server" Text='<%# Eval("SickLeaveHours") %>' />
                            <br />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            <br /></td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">BusinessEntityID:
                            <asp:Label ID="BusinessEntityIDLabel" runat="server" Text='<%# Eval("BusinessEntityID") %>' />
                            <br />OrganizationLevel:
                            <asp:Label ID="OrganizationLevelLabel" runat="server" Text='<%# Eval("OrganizationLevel") %>' />
                            <br />JobTitle:
                            <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
                            <br />BirthDate:
                            <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Eval("BirthDate") %>' />
                            <br />MaritalStatus:
                            <asp:Label ID="MaritalStatusLabel" runat="server" Text='<%# Eval("MaritalStatus") %>' />
                            <br />Gender:
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                            <br />HireDate:
                            <asp:Label ID="HireDateLabel" runat="server" Text='<%# Eval("HireDate") %>' />
                            <br />VacationHours:
                            <asp:Label ID="VacationHoursLabel" runat="server" Text='<%# Eval("VacationHours") %>' />
                            <br />SickLeaveHours:
                            <asp:Label ID="SickLeaveHoursLabel" runat="server" Text='<%# Eval("SickLeaveHours") %>' />
                            <br />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            <br /></td>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2014ConnectionString %>" SelectCommand="SELECT [BusinessEntityID], [OrganizationLevel], [JobTitle], [BirthDate], [MaritalStatus], [Gender], [HireDate], [VacationHours], [SickLeaveHours] FROM HumanResources.[Employee] WHERE ([BusinessEntityID] = @BusinessEntityID)" UpdateCommand="UPDATE HumanResources.[Employee] SET JobTitle=@JobTitle, MaritalStatus=@MaritalStatus WHERE ([BusinessEntityID] = @BusinessEntityID)">
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
