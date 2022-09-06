<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reports.aspx.cs" Inherits="Test.reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">

    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound">
            </asp:GridView>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="salaries of departments without heads" Width="300px" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="salaries of departments with the head" Width="300px" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="department with the highest salary" Width="300px" />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Executive salaries" Width="300px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:База1ConnectionString %>" ProviderName="<%$ ConnectionStrings:База1ConnectionString.ProviderName %>" SelectCommand="SELECT [departament], [Sum salary] AS Sum_salary FROM [1_salary_chiefNull]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:База1ConnectionString %>" ProviderName="<%$ ConnectionStrings:База1ConnectionString.ProviderName %>" SelectCommand="SELECT [&quot;departament&quot;] AS column1, [«Salary»] AS column2 FROM [1_SalaryDepartament]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:База1ConnectionString %>" ProviderName="<%$ ConnectionStrings:База1ConnectionString.ProviderName %>" SelectCommand="SELECT [deportament], [employees name] AS employees_name, [salary] FROM [2_Max_salary]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:База1ConnectionString %>" ProviderName="<%$ ConnectionStrings:База1ConnectionString.ProviderName %>" SelectCommand="SELECT [departament], [name chief] AS name_chief, [salary] FROM [3_salary_chief_order]"></asp:SqlDataSource>
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
