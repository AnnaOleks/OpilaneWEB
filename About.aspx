<%@ Page Title="Meie Õpilased" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OpilaneWEB.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="OpilaneID" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." Width="800px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" CancelText="Loobu" DeleteText="Kustuta" EditText="Redigeeri" InsertText="Sisesta" NewText="Uus" SelectText="Valik" UpdateText="Uuenda" />
                    <asp:BoundField DataField="OpilaneID" HeaderText="OpilaneID" ReadOnly="True" SortExpression="OpilaneID" InsertVisible="False" />
                    <asp:BoundField DataField="OpilaneNimi" HeaderText="Nimi" SortExpression="OpilaneNimi" />
                    <asp:BoundField DataField="OpilanePerenimi" HeaderText="Perenimi" SortExpression="OpilanePerenimi" />
                    <asp:BoundField DataField="Synniaeg" HeaderText="Synniaeg" SortExpression="Synniaeg" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="Aadress" HeaderText="Aadress" SortExpression="Aadress" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OpilasedTARConnectionString1 %>" DeleteCommand="DELETE FROM [OpilaneTabel] WHERE [OpilaneID] = @OpilaneID" InsertCommand="INSERT INTO [OpilaneTabel] ([OpilaneNimi], [OpilanePerenimi], [Synniaeg], [Aadress]) VALUES (@OpilaneNimi, @OpilanePerenimi, @Synniaeg, @Aadress)" ProviderName="<%$ ConnectionStrings:OpilasedTARConnectionString1.ProviderName %>" SelectCommand="SELECT [OpilaneID], [OpilaneNimi], [OpilanePerenimi], [Synniaeg], [Aadress] FROM [OpilaneTabel]" UpdateCommand="UPDATE [OpilaneTabel] SET [OpilaneNimi] = @OpilaneNimi, [OpilanePerenimi] = @OpilanePerenimi, [Synniaeg] = @Synniaeg, [Aadress] = @Aadress WHERE [OpilaneID] = @OpilaneID">
                <DeleteParameters>
                    <asp:Parameter Name="OpilaneID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="OpilaneNimi" Type="String" />
                    <asp:Parameter Name="OpilanePerenimi" Type="String" />
                    <asp:Parameter DbType="Date" Name="Synniaeg" />
                    <asp:Parameter Name="Aadress" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="OpilaneNimi" Type="String" />
                    <asp:Parameter Name="OpilanePerenimi" Type="String" />
                    <asp:Parameter DbType="Date" Name="Synniaeg" />
                    <asp:Parameter Name="Aadress" Type="String" />
                    <asp:Parameter Name="OpilaneID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</p>
        <p>&nbsp;</p>
    </main>
</asp:Content>
