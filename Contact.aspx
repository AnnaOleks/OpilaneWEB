<%@ Page Title="Lisa õpilane" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OpilaneWEB.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="OpilaneID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="86px" Width="162px" OnPageIndexChanging="DetailsView1_PageIndexChanging">
    <Fields>
        <asp:BoundField DataField="OpilaneID" HeaderText="OpilaneID" InsertVisible="False" ReadOnly="True" SortExpression="OpilaneID" />
        <asp:BoundField DataField="OpilaneNimi" HeaderText="Nimi" SortExpression="OpilaneNimi" />
        <asp:BoundField DataField="OpilanePerenimi" HeaderText="Perenimi" SortExpression="OpilanePerenimi" />
        <asp:TemplateField HeaderText="Synniaeg" SortExpression="Synniaeg">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Synniaeg") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Synniaeg") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Aadress" HeaderText="Aadress" SortExpression="Aadress" />
        <asp:CommandField ShowInsertButton="True" CancelText="Loobu" DeleteText="Kustuta" EditText="Korrigeeri" InsertText="Sisesta" NewText="Uus" SelectText="Valik" ShowEditButton="True" UpdateText="Uuenda" />
    </Fields>
</asp:DetailsView>
    </main>
<p>
    &nbsp;</p>
<main aria-labelledby="title">
        <h3>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OpilasedTARConnectionString1 %>" DeleteCommand="DELETE FROM [OpilaneTabel] WHERE [OpilaneID] = @OpilaneID" InsertCommand="INSERT INTO [OpilaneTabel] ([OpilaneNimi], [OpilanePerenimi], [Synniaeg], [Aadress]) VALUES (@OpilaneNimi, @OpilanePerenimi, @Synniaeg, @Aadress)" SelectCommand="SELECT * FROM [OpilaneTabel]" UpdateCommand="UPDATE [OpilaneTabel] SET [OpilaneNimi] = @OpilaneNimi, [OpilanePerenimi] = @OpilanePerenimi, [Synniaeg] = @Synniaeg, [Aadress] = @Aadress WHERE [OpilaneID] = @OpilaneID">
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
</h3>
    </main>
</asp:Content>
