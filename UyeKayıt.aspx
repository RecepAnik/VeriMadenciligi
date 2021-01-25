<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UyeKayıt.aspx.cs" Inherits="UyeKayıt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 121px;
    }
        .auto-style3 {
            width: 121px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1a" > 
 
      <table style="margin-left:40px; width: 475px;">
            <tr>
                <td colspan="3" style="font-weight: 700">ÜYE KAYIT FORMU</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4">
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">Ad Soyad</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBoxAd" runat="server" CssClass="textRegister"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxAd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">E-Posta</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textRegister" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Şifre</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textRegister" MaxLength="16" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Şifre Tekrar</td>
                <td class="auto-style16">:</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBoxSifreTekrar" runat="server" CssClass="textRegister" MaxLength="16" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxSifreTekrar" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBoxSifreTekrar" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Yaşınız</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBoxYas" runat="server" CssClass="textRegister" TextMode="Number" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxYas" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Cinsiyet</td>
                <td class="auto-style19">:</td>
                <td class="auto-style20">
                    <asp:RadioButtonList ID="RadioButtonListCinsiyet" runat="server" Height="21px" RepeatDirection="Horizontal" Width="131px">
                        <asp:ListItem Value="Erkek">Erkek</asp:ListItem>
                        <asp:ListItem Value="Kadın">Kadın</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonListCinsiyet" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Cep Telefonu</td>
                <td class="auto-style16">:</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBoxCepTel" runat="server" CssClass="textRegister" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Şehir</td>
                <td class="auto-style13">:</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="DropDownListSehir" runat="server" CssClass="textRegister">
                        <asp:ListItem Value="Adana">Adana</asp:ListItem>
                        <asp:ListItem Value="Ankara">Ankara</asp:ListItem>
                        <asp:ListItem Value="İstanbul">İstanbul</asp:ListItem>
                        <asp:ListItem Value="Samsun">Samsun</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Adres</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBoxAdres" runat="server" Height="40px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Meslek</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBoxMeslek" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Profil Resmi</td>
                <td>
                    :</td>
                <td class="auto-style14">
                    <asp:FileUpload ID="FileUploadProfil" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:HyperLink ID="HyperLinkSozlesme" runat="server" NavigateUrl="~/UyelikSozlesmesi.aspx">Üyelik Sözleşmesi</asp:HyperLink>
&nbsp;<asp:CheckBox ID="CheckBoxSozlesme" runat="server" Text="Üyelik Sözleşmesini Okudum Kabul Ediyorum" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style10"></td>
                <td class="auto-style5">
                    <asp:Button ID="ButtonKayitOl" runat="server" CssClass="myButton" OnClick="ButtonKayitOl_Click" Text="KAYIT OL" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style10"></td>
                <td class="auto-style5">
                    <asp:Label ID="LabelSonuc" runat="server" ForeColor="Red"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    <br />
                </td>
            </tr>
        </table>
         <br />
        </div>
</asp:Content>

