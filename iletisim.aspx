<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 500px;
            margin-left:-5px;
        }
        .auto-style4 {
            width: 149px;
        }
        .auto-style5 {
            width: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <div id="contact_page" class="single_content" style="outline: none; margin-left: 10px; line-height: 19px; font-size: 13px; border-left-style: solid; border-left-width: 1px; border-left-color: rgb(214, 214, 214); border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: rgb(214, 214, 214); padding-left: 150px; padding-bottom: 10px; color: rgb(74, 74, 74); font-family: Tahoma, Geneva, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-image: url(http://www.egitenkitap.com/engine/themes/antrasit/images/contact_page.png); background-color: rgb(255, 255, 255); background-position: 10px 10px; background-repeat: no-repeat;">
        <h3 style="outline: none; font-size: 16px; font-weight: bold; color: rgb(97, 97, 97); line-height: 30px; display: block; margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif;">kitapkurdu.com</h3>
        <p style="outline: none;">
            Kemalpaşa Mahallesi, Halkalı Caddesi No:101 34295
Sefaköy - Küçükçekmece
İstanbul-Türkiye<br style="outline: none;" />
            <strong style="outline: none;">Telefon:</strong><span class="Apple-converted-space">&nbsp;</span>0531 842 67 42<br style="outline: none;" />
            <strong style="outline: none;">Faks:</strong><span class="Apple-converted-space">&nbsp;</span>0531 842 67 42<br style="outline: none;" />
            <strong style="outline: none;">E-Posta:</strong><span class="Apple-converted-space">&nbsp;</span><a href="mailto:blpkitapkurdu@gmail.com" style="outline: none; color: rgb(0, 0, 0); text-decoration: none;">blpkitapkurdu@gmail.com</a></p>
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style4">Adınız Soyadınız</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:TextBox ID="TextBoxAdSoyad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">E-Posta Adresiniz</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:TextBox ID="TextBoxEposta" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Telefon</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:TextBox ID="TextBoxTelefon" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">İletmek İstediğiniz Konu</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:TextBox ID="TextBoxKonu" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mesajınız</td>
                <td class="auto-style5">:</td>
                <td>
                    <asp:TextBox ID="TextBoxMesaj" runat="server" Height="57px" Width="167px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Gönder" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <br />
</asp:Content>

