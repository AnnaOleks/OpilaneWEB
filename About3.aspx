<%@ Page Title="Autod" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About3.aspx.cs" Inherits="OpilaneWEB.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." Width="772px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
                    <asp:BoundField DataField="aasta" HeaderText="aasta" SortExpression="aasta" />
                    <asp:BoundField DataField="RegNumber" HeaderText="RegNumber" SortExpression="RegNumber" />
                    <asp:BoundField DataField="Nimi" HeaderText="Nimi" SortExpression="Nimi" />
                    <asp:BoundField DataField="Telefon" HeaderText="Telefon" SortExpression="Telefon" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:autoOleksConnectionString1 %>" DeleteCommand="DELETE FROM [Auto] WHERE [autoID] = @autoID" InsertCommand="INSERT INTO [Auto] ([Mark], [aasta], [RegNumber], [omanikID]) VALUES (@Mark, @aasta, @RegNumber, @omanikID)" SelectCommand="SELECT Auto.Mark, Auto.aasta, Auto.RegNumber, Omanik.Nimi, Omanik.Telefon FROM Auto INNER JOIN Omanik ON Auto.omanikID = Omanik.OmanikID" UpdateCommand="UPDATE [Auto] SET [Mark] = @Mark, [aasta] = @aasta, [RegNumber] = @RegNumber, [omanikID] = @omanikID WHERE [autoID] = @autoID">
                <DeleteParameters>
                    <asp:Parameter Name="autoID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Mark" Type="String" />
                    <asp:Parameter Name="aasta" Type="Int32" />
                    <asp:Parameter Name="RegNumber" Type="String" />
                    <asp:Parameter Name="omanikID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Mark" Type="String" />
                    <asp:Parameter Name="aasta" Type="Int32" />
                    <asp:Parameter Name="RegNumber" Type="String" />
                    <asp:Parameter Name="omanikID" Type="Int32" />
                    <asp:Parameter Name="autoID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</p>
        <p>&nbsp;</p>
    </main>
</asp:Content>
