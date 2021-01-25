<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UyeGiris.aspx.cs" Inherits="UyeGiris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .uyegiris {
            height: auto;
            margin:auto;
        }
        .auto-style2 {
            margin:auto;
           border:solid 1px gray;
            margin-top:50px;
            text-align:center;

        }
        .auto-style3 {
            height: 23px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="uyegiris" >

         <br />


         <table class="auto-style2">
             <tr>
                 <td colspan="3" >
                     Giriş Formu</td>
             </tr>
             <tr>
                 <td colspan="3" >
                     <img alt="" height="60" src="images/login.png" /></td>
             </tr>
             <tr>
                 <td colspan="3" ></td>
             </tr>
             <tr>
                 <td>E-Mail</td>
                 <td>:</td>
                 <td>
                     <asp:TextBox class="txt"  ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>Şifre</td>
                 <td>:</td>
                 <td>
                     <asp:TextBox  class="txt" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>
                     <asp:Button    ID="Button1" runat="server" Text="Giriş" Height="30px" Width="100px" OnClick="Button1_Click" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3"></td>
                 <td class="auto-style3"></td>
                 <td class="auto-style3">
                     <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                 </td>
             </tr>
         </table>




         <br />




         <br />




     </div>
             <br /> <br /> <br />
             <br />
</asp:Content>

