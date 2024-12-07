<%@ Page Title="Rühmad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About2.aspx.cs" Inherits="OpilaneWEB.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RyhmID" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="RyhmID" HeaderText="RyhmID" ReadOnly="True" SortExpression="RyhmID" />
                    <asp:BoundField DataField="RyhmNimi" HeaderText="RyhmNimi" SortExpression="RyhmNimi" />
                    <asp:BoundField DataField="Oppeaasta" HeaderText="Oppeaasta" SortExpression="Oppeaasta" />
                    <asp:BoundField DataField="Ryhmajuhataja" HeaderText="Ryhmajuhataja" SortExpression="Ryhmajuhataja" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OpilasedTARConnectionString1 %>" DeleteCommand="DELETE FROM [Ryhm] WHERE [RyhmID] = @RyhmID" InsertCommand="INSERT INTO [Ryhm] ([RyhmNimi], [Oppeaasta], [Ryhmajuhataja]) VALUES (@RyhmNimi, @Oppeaasta, @Ryhmajuhataja)" SelectCommand="SELECT * FROM [Ryhm]" UpdateCommand="UPDATE [Ryhm] SET [RyhmNimi] = @RyhmNimi, [Oppeaasta] = @Oppeaasta, [Ryhmajuhataja] = @Ryhmajuhataja WHERE [RyhmID] = @RyhmID">
                <DeleteParameters>
                    <asp:Parameter Name="RyhmID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="RyhmNimi" Type="String" />
                    <asp:Parameter Name="Oppeaasta" Type="Int32" />
                    <asp:Parameter Name="Ryhmajuhataja" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="RyhmNimi" Type="String" />
                    <asp:Parameter Name="Oppeaasta" Type="Int32" />
                    <asp:Parameter Name="Ryhmajuhataja" Type="String" />
                    <asp:Parameter Name="RyhmID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</p>
        <p>&nbsp;</p>
    </main>
</asp:Content>
