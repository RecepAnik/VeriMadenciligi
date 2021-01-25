<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KitapDetay.aspx.cs" Inherits="KitapDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1a {
            width: 93%;
            height: 330px;
        }
        .auto-style2 {
            height: 60px;
        }
        .auto-style3 {
            width: 329px;
             vertical-align: top;
             padding-top:50px;
        }
        .auto-style4 {
            width: 116px;
        }
        .auto-style6 {
            width: 116px;
            height: 60px;
        }
        .auto-style8 {
            width: 116px;
            height: 60px;
        }
        .auto-style10 {
            height: 60px;
        }
        .auto-style11 {
            width: 4px;
            height: 60px;
        }
        .auto-style12 {
            width: 4px;
            height: 60px;
        }
        .auto-style13 {
            width: 4px;
        }
    .auto-style14 {
        width: 116px;
         vertical-align: top;
    }
    .auto-style15 {
        width: 4px;
        vertical-align: top;
    }
    .auto-style16 {
        text-decoration:none;

    }
        .auto-style17 {
            width: 116px;
            height: 68px;
        }
        .auto-style18 {
            width: 4px;
            height: 68px;
        }
        .auto-style19 {
            height: 68px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div id="iceriksayfası">
        
 
                                     <asp:Label ID="UrunSayisi" runat="server"  Font-Names="Segoe UI" Font-Size="10pt" Font-Strikeout="False" Visible="False" >0</asp:Label>
                                      
                                     
                                            <asp:LinkButton ID="SepetimLink" runat="server" CssClass="Etiket" Font-Names="Segoe UI" Font-Size="12pt" Font-Strikeout="False" PostBackUrl="~/Sepet.aspx"  Visible="False">Sepetim</asp:LinkButton>
                                     
        <br />
        <table class="auto-style1a">
            <tr>
                <td class="auto-style3" rowspan="5">
                    <asp:Image ID="Image1" runat="server" Height="230px" Width="160px" style="margin-left:90px" />
                   <p>  
                       <center> <br /><br /><br />
                       <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/sepete_ekle.png" OnClick="ImageButton1_Click" />
               </center>     </p>
                </td>
                <td class="auto-style6">
                    <p style="font-size:17px;">Kitap Adı</p></td>
                <td class="auto-style11">
                    <p style="font-size:17px;">:</p></td>
                <td class="auto-style2" >
               <p style="
float: left;
width: 370px;
font: 20px/25px open_sanssemibold, Helvetica, Arial;
color: #369;
text-align: left; ">      <asp:Label ID="LabelAd" runat="server"></asp:Label></p>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    Kitap Id</td>
                <td class="auto-style12">
                    :</td>
                <td class="auto-style10">
                    <asp:Label ID="LabelId" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                   <p style="font-size:17px;">Yazar</p></td>
                <td class="auto-style13">
                   <p style="font-size:17px;">:</p></td>
                <td>
                    <asp:Label ID="Labelyazar" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                   <p style="font-size:17px; ">Fiyat</p></td>
                <td class="auto-style18">
                   <p style="font-size:17px;">:</p></td>
                <td class="auto-style19">
               <p style="font: 20px/24px open_sansbold, Helvetica, Arial;
color: #c33;
">     <asp:Label ID="Labelfiyat" runat="server" Font-Bold="False"></asp:Label></p> 
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <p style="font-size:17px;">Açıklama</p></td>
                <td class="auto-style15">
                    <p style="font-size:17px;">:</p></td>
                <td class="auto-style16"><br />
                    <asp:Label ID="Labelacıklama" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

         <br />  <br />  <br />  <br />

    </div>
   
</asp:Content>

