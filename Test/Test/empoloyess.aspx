<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="empoloyess.aspx.cs" Inherits="Test.empoloyess" %>
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                    <asp:BoundField DataField="name" HeaderText="name departament" SortExpression="name" />
                </Columns>
                <SelectedRowStyle BackColor="#66FF66" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:База1ConnectionString %>" DeleteCommand="DELETE FROM [departament] WHERE [id] = ?" InsertCommand="INSERT INTO [departament] ([id], [name]) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:База1ConnectionString.ProviderName %>" SelectCommand="SELECT [id], [name] FROM [departament]" UpdateCommand="UPDATE [departament] SET [name] = ? WHERE [id] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="name" HeaderText="name empoloyees" SortExpression="name" />
                    <asp:BoundField DataField="salary" HeaderText="salary empoloyees" SortExpression="salary" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                    <asp:BoundField DataField="departament_Id" HeaderText="departament_Id" SortExpression="departament_Id" Visible="False" />
                    <asp:BoundField DataField="chief_Id" HeaderText="chief_Id" SortExpression="chief_Id" Visible="False" />
                </Columns>
                <SelectedRowStyle BackColor="#993399" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:База1ConnectionString %>" DeleteCommand="DELETE FROM [employee] WHERE [id] = ?" InsertCommand="INSERT INTO [employee] ([name], [salary], [id], [departament_Id], [chief_Id]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:База1ConnectionString.ProviderName %>" SelectCommand="SELECT [name], [salary], [id], [departament_Id], [chief_Id] FROM [employee] WHERE ([departament_Id] = ?)" UpdateCommand="UPDATE [employee] SET [name] = ?, [salary] = ?, [departament_Id] = ?, [chief_Id] = ? WHERE [id] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="salary" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="departament_Id" Type="Int32" />
                    <asp:Parameter Name="chief_Id" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="departament_Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="salary" Type="Int32" />
                    <asp:Parameter Name="departament_Id" Type="Int32" />
                    <asp:Parameter Name="chief_Id" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:База1ConnectionString %>" ProviderName="<%$ ConnectionStrings:База1ConnectionString.ProviderName %>" SelectCommand="SELECT [departament.name] AS column1, [employees.name] AS column2, [salary], [chieves.name] AS column3 FROM [deportament_cheif]"></asp:SqlDataSource>
            <br />
&nbsp;<asp:GridView ID="GridView3" runat="server" OnRowDataBound="GridView3_RowDataBound">
            </asp:GridView>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="all employees" Width="200px" />
        </td>
    </tr>
</table>
</asp:Content>
