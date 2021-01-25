<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SatısRapor.aspx.cs" Inherits="Satıs" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="SiparisId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="SiparisId" HeaderText="SiparisId" ReadOnly="True" SortExpression="SiparisId" />
            <asp:BoundField DataField="UrunId" HeaderText="UrunId" SortExpression="UrunId" />
            <asp:BoundField DataField="Adet" HeaderText="Adet" SortExpression="Adet" />
            <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
            <asp:BoundField DataField="KullanıcıId" HeaderText="KullanıcıId" SortExpression="KullanıcıId" />
            <asp:BoundField DataField="OdemeTip" HeaderText="OdemeTip" SortExpression="OdemeTip" />
            <asp:BoundField DataField="Onay" HeaderText="Onay" SortExpression="Onay" />
            <asp:BoundField DataField="Adres" HeaderText="Adres" SortExpression="Adres" />
            <asp:BoundField DataField="Siparis_Tarihi" HeaderText="Siparis_Tarihi" SortExpression="Siparis_Tarihi" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kitapConnectionString1 %>" DeleteCommand="DELETE FROM [SiparisDetay] WHERE [SiparisId] = @SiparisId" InsertCommand="INSERT INTO [SiparisDetay] ([UrunId], [Adet], [Fiyat], [KullanıcıId], [OdemeTip], [Onay], [Siparis_Tarihi], [Adres]) VALUES (@UrunId, @Adet, @Fiyat, @KullanıcıId, @OdemeTip, @Onay, @Siparis_Tarihi, @Adres)" ProviderName="<%$ ConnectionStrings:kitapConnectionString1.ProviderName %>" SelectCommand="SELECT [SiparisId], [UrunId], [Adet], [Fiyat], [KullanıcıId], [OdemeTip], [Onay], [Siparis_Tarihi], [Adres] FROM [SiparisDetay]" UpdateCommand="UPDATE [SiparisDetay] SET [UrunId] = @UrunId, [Adet] = @Adet, [Fiyat] = @Fiyat, [KullanıcıId] = @KullanıcıId, [OdemeTip] = @OdemeTip, [Onay] = @Onay, [Siparis_Tarihi] = @Siparis_Tarihi, [Adres] = @Adres WHERE [SiparisId] = @SiparisId">
        <DeleteParameters>
            <asp:Parameter Name="SiparisId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UrunId" Type="Int32" />
            <asp:Parameter Name="Adet" Type="Int32" />
            <asp:Parameter Name="Fiyat" Type="Double" />
            <asp:Parameter Name="KullanıcıId" Type="Int32" />
            <asp:Parameter Name="OdemeTip" Type="String" />
            <asp:Parameter Name="Onay" Type="String" />
            <asp:Parameter Name="Siparis_Tarihi" Type="DateTime" />
            <asp:Parameter Name="Adres" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UrunId" Type="Int32" />
            <asp:Parameter Name="Adet" Type="Int32" />
            <asp:Parameter Name="Fiyat" Type="Double" />
            <asp:Parameter Name="KullanıcıId" Type="Int32" />
            <asp:Parameter Name="OdemeTip" Type="String" />
            <asp:Parameter Name="Onay" Type="String" />
            <asp:Parameter Name="Siparis_Tarihi" Type="DateTime" />
            <asp:Parameter Name="Adres" Type="String" />
            <asp:Parameter Name="SiparisId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" Height="400px" Width="400px">
    <series>
        <asp:Series ChartType="Pie" Name="Series1" XValueMember="UrunId" YValueMembers="Toplam Satis">
        </asp:Series>
    </series>
    <chartareas>
        <asp:ChartArea Name="ChartArea1">
        </asp:ChartArea>
    </chartareas>
</asp:Chart>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kitapConnectionString1 %>" SelectCommand="SELECT UrunId, SUM(Adet) As [Toplam Satis] FROM SiparisDetay GROUP BY UrunId"></asp:SqlDataSource>
<br />
<br />
</asp:Content>

