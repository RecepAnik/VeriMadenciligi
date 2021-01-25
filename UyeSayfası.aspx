<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UyeSayfası.aspx.cs" Inherits="UyeSayfası" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 450px;
            margin-left:50px;
         
        }
        .auto-style3 {
            width: 179px;
        }
        .auto-style5 {
            width: 122px;
        }
        .auto-style6 {
            width: 4px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {            width: 279px;
            margin-top:-300px;
            margin-right:100px;
            
        }
        .auto-style13 {
            height: 30px;
        }
        .auto-style14 {
            height: 30px;
            width: 121px;
        }
        .auto-style15 {
            height: 26px;
            width: 249px;
        }
        .auto-style16 {
            height: 23px;
            width: 249px;
        }
        .auto-style17 {
            width: 249px;
        }
        .auto-style18 {
            width: 100%;
            text-align:center;
        }
     
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="uyegiris" >
         <center> 
         <h2 >Yönetici Sayfası</h2>
                 </center>
         <table class="auto-style2">
                      <tr>
                          <td rowspan="5" class="auto-style3">
                              <asp:Image ID="Image1" runat="server" Height="120px" Width="110px" />
                          &nbsp;&nbsp;&nbsp;&nbsp;
                          </td>
                          <td class="auto-style5">Adınız Soyadınız</td>
                          <td class="auto-style6">:</td>
                          <td>
                              <asp:Label ID="LabelAd" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style5">E-Posta</td>
                          <td class="auto-style6">:</td>
                          <td>
                              <asp:Label ID="Labelposta" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style5">Cinsiyet</td>
                          <td class="auto-style6">:</td>
                          <td>
                              <asp:Label ID="Labelcins" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style5">Yaş</td>
                          <td class="auto-style6">:</td>
                          <td>
                              <asp:Label ID="Labelyas" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style5">Meslek</td>
                          <td class="auto-style6">&nbsp;</td>
                          <td>
                              <asp:Label ID="LabelMeslek" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style3">&nbsp;</td>
                          <td class="auto-style5">Sehir</td>
                          <td class="auto-style6">:</td>
                          <td>
                              <asp:Label ID="LabelSehir" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style3">&nbsp;</td>
                          <td class="auto-style5">Adres</td>
                          <td class="auto-style6">&nbsp;</td>
                          <td>
                              <asp:Label ID="LabelAdres" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style3">&nbsp;</td>
                          <td class="auto-style5">Kayıt Tarihi</td>
                          <td class="auto-style6">:</td>
                          <td>
                              <asp:Label ID="Labelkayıttarihi" runat="server"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style3">&nbsp;</td>
                          <td class="auto-style5">&nbsp;</td>
                          <td class="auto-style6">&nbsp;</td>
                          <td>
                              <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style9" colspan="4"></td>
                      </tr>
                      </table>
         <hr />
         <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="SiparisId" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical" Visible="False">
             <AlternatingRowStyle BackColor="#CCCCCC" />
             <Columns>
                 <asp:CommandField ShowSelectButton="True" />
                 <asp:BoundField DataField="SiparisId" HeaderText="SiparisId" ReadOnly="True" SortExpression="SiparisId" />
                 <asp:BoundField DataField="UrunId" HeaderText="UrunId" SortExpression="UrunId" />
                 <asp:BoundField DataField="Adet" HeaderText="Adet" SortExpression="Adet" />
                 <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
                 <asp:BoundField DataField="KullanıcıId" HeaderText="KullanıcıId" SortExpression="KullanıcıId" />
                 <asp:BoundField DataField="OdemeTip" HeaderText="OdemeTip" SortExpression="OdemeTip" />
                 <asp:BoundField DataField="Adres" HeaderText="Adres" SortExpression="Adres" />
                 <asp:BoundField DataField="Onay" HeaderText="Onay" SortExpression="Onay" />
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
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kitapConnectionString1 %>" DeleteCommand="DELETE FROM [SiparisDetay] WHERE [SiparisId] = @SiparisId" InsertCommand="INSERT INTO [SiparisDetay] ([UrunId], [Adet], [Fiyat], [KullanıcıId], [OdemeTip], [Onay], [Siparis_Tarihi], [Adres]) VALUES (@UrunId, @Adet, @Fiyat, @KullanıcıId, @OdemeTip, @Onay, @Siparis_Tarihi, @Adres)" SelectCommand="SELECT [SiparisId], [UrunId], [Adet], [Fiyat], [KullanıcıId], [OdemeTip], [Onay], [Siparis_Tarihi], [Adres] FROM [SiparisDetay] WHERE ([KullanıcıId] = @KullanıcıId)" UpdateCommand="UPDATE [SiparisDetay] SET [UrunId] = @UrunId, [Adet] = @Adet, [Fiyat] = @Fiyat, [KullanıcıId] = @KullanıcıId, [OdemeTip] = @OdemeTip, [Onay] = @Onay, [Siparis_Tarihi] = @Siparis_Tarihi, [Adres] = @Adres WHERE [SiparisId] = @SiparisId">
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
             <SelectParameters>
                 <asp:SessionParameter Name="KullanıcıId" SessionField="KulID" Type="Int32" />
             </SelectParameters>
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
         <br />


                  <asp:Panel ID="AdminPanel" runat="server">

                    <table class="auto-style18">
                          <tr>
                                 <td bgcolor="#E8E8E8"  style="font-size: large; font-weight: 700" onMouseOut="this.style.background='#E8E8E8'" 
onMouseOver="this.style.background ='#CCCCCC'; 
this.style.cursor = 'hand'"><a   href="Uyeler.aspx">Üyeleri Görüntüle</a></td>
                             
                            <td bgcolor="#E8E8E8"  style="font-size: large; font-weight: 700" onMouseOut="this.style.background='#E8E8E8'" 
onMouseOver="this.style.background ='#CCCCCC'; 
this.style.cursor = 'hand'"><a   href="SatısRapor.aspx">Satış Raporları</a></td>
                            
   
                             
                          </tr>
                          </table>
                      <br />
<hr />
                   <br />
                      <table class="auto-style2">
                          <tr>
                              <td colspan="4" style="font-weight: 700; text-decoration: underline">Veri Giriş Formu</td>
                              <td rowspan="10" style="font-weight: 700;"><hr style="height:250px; width:1px; margin-top:-40px;" /></td>
                          </tr>
                          <tr>
                              <td class="auto-style10">Kitap Adı</td>
                              <td class="auto-style10">&nbsp;</td>
                              <td class="auto-style10">:</td>
                              <td class="auto-style15">
                                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" ValidationGroup="ekle"></asp:RequiredFieldValidator>
                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style8">Kitap Yazarı</td>
                              <td class="auto-style8">&nbsp;</td>
                              <td class="auto-style8">:</td>
                              <td class="auto-style16">
                                  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" ValidationGroup="ekle"></asp:RequiredFieldValidator>
                              </td>
                          </tr>
                          <tr>
                              <td>Kitap Kategori</td>
                              <td>&nbsp;</td>
                              <td>:</td>
                              <td class="auto-style17">
                                  <asp:DropDownList ID="DropDownList1" runat="server" Width="173px" AutoPostBack="True" >
                                      <asp:ListItem Value="0">Edebiyat </asp:ListItem>
                                      <asp:ListItem Value="1">Eğitim</asp:ListItem>
                                      <asp:ListItem Value="2">Felsefe </asp:ListItem>

                                      <asp:ListItem Value="3">Çocuk Kitapları</asp:ListItem>
                                       <asp:ListItem Value="4">Tarih </asp:ListItem>
                                  </asp:DropDownList>
                              </td>
                          </tr>
                          <tr>
                              <td>Kitap Açıklaması</td>
                              <td>&nbsp;</td>
                              <td>:</td>
                              <td class="auto-style17">
                                  <asp:TextBox ID="TextBox3" runat="server" Height="62px" TextMode="MultiLine" Width="167px"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" ValidationGroup="ekle"></asp:RequiredFieldValidator>
                              </td>
                          </tr>
                          <tr>
                              <td>Kitap Fiyatı</td>
                              <td>&nbsp;</td>
                              <td>:</td>
                              <td class="auto-style17">
                                  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red" ValidationGroup="ekle"></asp:RequiredFieldValidator>
                              </td>
                          </tr>
                          <tr>
                              <td>Kitap Resim</td>
                              <td>&nbsp;</td>
                              <td>:</td>
                              <td class="auto-style17">
                                  <asp:FileUpload ID="FileUpload1" runat="server" />
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td class="auto-style17">
                                  <asp:CheckBox ID="CheckBox1" runat="server" Text="Onayla" />
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td class="auto-style17">
                                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yayınla" ValidationGroup="ekle" />
                                  <br />
                                  <asp:Label ID="Label2" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td colspan="4">
                                  <br />
                              </td>
                          </tr>
                      </table>
                      
                      
                      
                      <br />
                      <table class="auto-style11" align="right">
                          <tr>
                              <td colspan="2">
                                  Silmek İstediğiniz Urunun ID Giriniz</td>
                          </tr>
                          <tr>
                              <td class="auto-style14">
                                  <asp:TextBox ID="TextBox5" runat="server" Width="84px"></asp:TextBox>
                              </td>
                              <td class="auto-style13">
                                  <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sil" Width="50px" />
                              </td>
                          </tr>
                          <tr>
                              <td colspan="2">
                                  <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                              </td>
                          </tr>
                      </table>
                      
                      
                      
                      
                      
                      <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kategori Düzenleme 
                      </h3>
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="370px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" style="margin-left: 30px">
                          <Columns>
                              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                              <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                              <asp:BoundField DataField="KategoriAd" HeaderText="KategoriAd" SortExpression="KategoriAd" />
                          </Columns>
                          <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#F7F7F7" />
                          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                          <SortedDescendingCellStyle BackColor="#E5E5E5" />
                          <SortedDescendingHeaderStyle BackColor="#242121" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kitapConnectionString1 %>" DeleteCommand="DELETE FROM [Kategoriler] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Kategoriler] ([Id], [KategoriAd]) VALUES (@Id, @KategoriAd)" ProviderName="<%$ ConnectionStrings:kitapConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [KategoriAd] FROM [Kategoriler]" UpdateCommand="UPDATE [Kategoriler] SET [KategoriAd] = @KategoriAd WHERE [Id] = @Id">
                          <DeleteParameters>
                              <asp:Parameter Name="Id" Type="Int32" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter Name="Id" Type="Int32" />
                              <asp:Parameter Name="KategoriAd" Type="String" />
                          </InsertParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="KategoriAd" Type="String" />
                              <asp:Parameter Name="Id" Type="Int32" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                      <br />
                      
                      <br />

            <center>   <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                    
                <br />
                      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><b>Menü Resimlerini Değiştirmek İçin Tıklayınız..</b></asp:LinkButton>
                </center>      
                <asp:Panel ID="Panel1" runat="server"  Width="500" style="margin-left:50px;">
                          1. Resim :        <asp:FileUpload ID="FileUpload2" runat="server" /><br />
         2. Resim :  <asp:FileUpload ID="FileUpload3" runat="server" /><br />
          3. Resim : <asp:FileUpload ID="FileUpload4" runat="server" /><br />
          4. Resim : <asp:FileUpload ID="FileUpload5" runat="server" />
                      <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Gönder" />
                      


                      </asp:Panel>
                      
                      
                      
                  </asp:Panel>
                  <br />

  




</div>
</asp:Content>

