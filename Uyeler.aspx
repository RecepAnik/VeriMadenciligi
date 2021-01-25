<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Uyeler.aspx.cs" Inherits="Admin_Uyeler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Üyeler 
                          <asp:GridView ID="GridView3" runat="server" style="margin-left: 30px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="KullanıcıId" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." ForeColor="Black" AllowSorting="True" Font-Bold="False" Font-Size="11pt">
                              <Columns>
                                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                  <asp:BoundField DataField="KullanıcıId" HeaderText="Id" SortExpression="KullanıcıId" />
                                  <asp:BoundField DataField="Eposta" HeaderText="Eposta" SortExpression="Eposta" />
                                  <asp:BoundField DataField="Cinsiyet" HeaderText="Cinsiyet" SortExpression="Cinsiyet" />
                                  <asp:BoundField DataField="Yaş" HeaderText="Yaş" SortExpression="Yaş" />
                                  <asp:CheckBoxField DataField="Yönetici" HeaderText="Yönetici" SortExpression="Yönetici" />
                                  <asp:BoundField DataField="AdSoyad" HeaderText="AdSoyad" SortExpression="AdSoyad" />
                                  <asp:BoundField DataField="Sehir" HeaderText="Sehir" SortExpression="Sehir" />
                                  <asp:BoundField DataField="KayıtTarihi" HeaderText="KayıtTarihi" SortExpression="KayıtTarihi" />
                              </Columns>
                              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                              <HeaderStyle BackColor="#333333" ForeColor="White" Font-Bold="False" />
                              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                              <SelectedRowStyle BackColor="#CC3333"  ForeColor="White" />
                              <SortedAscendingCellStyle BackColor="#F7F7F7" />
                              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                              <SortedDescendingCellStyle BackColor="#E5E5E5" />
                              <SortedDescendingHeaderStyle BackColor="#242121" />
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:kitapConnectionString1 %>" DeleteCommand="DELETE FROM [Kullanıcılar] WHERE [KullanıcıId] = @KullanıcıId" InsertCommand="INSERT INTO [Kullanıcılar] ([Eposta], [Sifre], [Cinsiyet], [Yaş], [Yönetici], [AdSoyad], [Sehir], [ProfilResmi], [KayıtTarihi]) VALUES (@Eposta, @Sifre, @Cinsiyet, @Yaş, @Yönetici, @AdSoyad, @Sehir, @ProfilResmi, @KayıtTarihi)" ProviderName="<%$ ConnectionStrings:kitapConnectionString1.ProviderName %>" SelectCommand="SELECT [KullanıcıId], [Eposta], [Sifre], [Cinsiyet], [Yaş], [Yönetici], [AdSoyad], [Sehir], [ProfilResmi], [KayıtTarihi] FROM [Kullanıcılar]" UpdateCommand="UPDATE [Kullanıcılar] SET [Eposta] = @Eposta, [Sifre] = @Sifre, [Cinsiyet] = @Cinsiyet, [Yaş] = @Yaş, [Yönetici] = @Yönetici, [AdSoyad] = @AdSoyad, [Sehir] = @Sehir, [ProfilResmi] = @ProfilResmi, [KayıtTarihi] = @KayıtTarihi WHERE [KullanıcıId] = @KullanıcıId">
                              <DeleteParameters>
                                  <asp:Parameter Name="KullanıcıId" Type="Int32" />
                              </DeleteParameters>
                              <InsertParameters>
                                  <asp:Parameter Name="Eposta" Type="String" />
                                  <asp:Parameter Name="Sifre" Type="String" />
                                  <asp:Parameter Name="Cinsiyet" Type="String" />
                                  <asp:Parameter Name="Yaş" Type="Int32" />
                                  <asp:Parameter Name="Yönetici" Type="Boolean" />
                                  <asp:Parameter Name="AdSoyad" Type="String" />
                                  <asp:Parameter Name="Sehir" Type="String" />
                                  <asp:Parameter Name="ProfilResmi" Type="String" />
                                  <asp:Parameter DbType="Date" Name="KayıtTarihi" />
                              </InsertParameters>
                              <UpdateParameters>
                                  <asp:Parameter Name="Eposta" Type="String" />
                                  <asp:Parameter Name="Sifre" Type="String" />
                                  <asp:Parameter Name="Cinsiyet" Type="String" />
                                  <asp:Parameter Name="Yaş" Type="Int32" />
                                  <asp:Parameter Name="Yönetici" Type="Boolean" />
                                  <asp:Parameter Name="AdSoyad" Type="String" />
                                  <asp:Parameter Name="Sehir" Type="String" />
                                  <asp:Parameter Name="ProfilResmi" Type="String" />
                                  <asp:Parameter DbType="Date" Name="KayıtTarihi" />
                                  <asp:Parameter Name="KullanıcıId" Type="Int32" />
                              </UpdateParameters>
                          </asp:SqlDataSource>
                      </h3>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>

