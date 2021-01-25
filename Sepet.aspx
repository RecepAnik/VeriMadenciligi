<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sepet.aspx.cs" Inherits="Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 616px;
            margin-left:auto;
            margin-right:auto;
            text-align:center;
        }
        .auto-style3 {
            height: 23px;
            background-color: #97DDFF;
            width: 150px;
        }
        .auto-style5 {
            width: 100px;
        }
        .auto-style7 {
            width: 60px;
        }
        .auto-style8 {
            width: 60px;
            height: 30px;
        }
        .auto-style9 {
            width: 100px;
            height: 30px;
        }
        .auto-style10 {
            height: 30px;
        }
        .auto-style11 {
            width: 82px;
        }
        .auto-style12 {
            height: 30px;
            width: 89px;
        }
        .auto-style13 {
            height: 23px;
            background-color: #97DDFF;
            width: 82px;
        }
        .auto-style16 {
            height: 23px;
            background-color: #97DDFF;
            width: 199px;
        }
        .auto-style17 {
            height: 23px;
            background-color: #97DDFF;
            width: 89px;
        }
        .auto-style18 {
            width: 89px;
        }
        .auto-style19 {
            width: 500px;
        }
        .auto-style20 {
            height: 22px;
        }
        .auto-style21 {
            height: 23px;
            text-align: center;
        }
        .auto-style23 {
            height: 22px;
            width: 240px;
        }
        .auto-style24 {
            height: 23px;
            text-align: center;
            width: 240px;
        }
        .auto-style25 {
            width: 181px;
        }
        .auto-style27 {
            height: 22px;
            width: 123px;
        }
        .auto-style28 {
            height: 23px;
            text-align: center;
            font-weight: 700;
        }
        .auto-style29 {
            width: 123px;
        }
        .auto-style30 {
            width: 63px;
        }
        .auto-style31 {
            height: 22px;
            width: 4px;
        }
        .auto-style32 {
            height: 23px;
            text-align: center;
            width: 4px;
        }
        .auto-style33 {
            width: 4px;
        }
        .auto-style34 {
            width: 240px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
    </p>
   
    <br />
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">Ürün Id</td>
            <td class="auto-style3">Ürün Adı</td>
            <td class="auto-style17">Fiyat</td>
            <td class="auto-style13">Adet</td>
            <td class="auto-style16">Toplam Tutar</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="LabelId" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="LabelAdı" runat="server"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:Label ID="LabelFiyat" runat="server"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:Label ID="LabelAdet" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="LabelToplam" runat="server" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
            <td class="auto-style12"></td>
            <td colspan="2" class="auto-style10">
                <asp:Button ID="Button1" runat="server" Text="Alışverişi Tamamla" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="Labelhata" runat="server" Font-Size="15pt" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
   
    <asp:Panel ID="Panel1" runat="server" Width="700px" Height="450px" BackColor="#E9E9E9" BorderWidth="1px" BorderColor="White" Visible="False" Style="margin-left:100px;margin-bottom:50px;">

        <table class="auto-style19">
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style34"><b> ÖDEME FORMU</b></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">Ödeme Tipi</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style23">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Peşin</asp:ListItem>
                        <asp:ListItem>Taksit</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style29">Ürün Adı</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style34">
                    <asp:Label ID="LabelAdı0" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">Ürün Adet</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style34">
                    <asp:Label ID="LabelAdet0" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">Ödeme Tutarı</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style34">
                    <asp:Label ID="LabelToplam0" runat="server" style="font-weight: 700" ForeColor="Blue"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28" colspan="3">Kart Bilgisi</td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style29">İsminiz</td>
                <td class="auto-style33">:</td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBoxOdemeIsım" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxOdemeIsım" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">Kart Numarası</td>
                <td class="auto-style33">:</td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBoxOdemeIKart" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxOdemeIKart" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">Son Kullanma Tarihi</td>
                <td class="auto-style33">:</td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBoxOdemeAy" runat="server" Width="30px"></asp:TextBox>
                    &nbsp;/
                    <asp:TextBox ID="TextBoxOdemeYıl" runat="server" Width="30px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">Güvenlik Kodu</td>
                <td class="auto-style33">:</td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBoxOdemeKod" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxOdemeKod" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">Adres</td>
                <td class="auto-style33">:</td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBoxAdres" runat="server" Height="30px" TextMode="MultiLine" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">Meslek</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBoxMeslek" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style34">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Onay" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style34">
                    <asp:Button ID="ButtonSatınAl" runat="server" OnClick="ButtonSatınAl_Click" Text="Onayla" Height="28px" Width="79px" />
                    <br />
                    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
        </table>




    </asp:Panel>
   </asp:Content>

