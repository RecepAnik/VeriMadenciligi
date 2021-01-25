<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KategoriSayfası.aspx.cs" Inherits="KategoriSayfası" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><link href="Css/StyleSheet.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="orta">
    <asp:ListView ID="ListView1" runat="server">

         <ItemTemplate> 
        <div class="icerik"  onmouseover="this.style.background ='#E8E8E8'" onmouseout="this.style.background ='#ffffff'">

         <center><a href="KitapDetay.aspx?kitapId=<%#Eval("Id") %>"> <asp:Image ID="Image1"  ImageUrl='<%#Eval("KitapResim")%>' runat="server"  Width="130" Height="180" />   </a> 
          <p style="font: 13px/15px open_sansregular, Helvetica, Arial;
color: #666;
margin-top:3px;

overflow: hidden;
text-overflow: ellipsis;"> <asp:Label ID="Label1" runat="server" Text='<%#Eval("KitapAdı")%>'></asp:Label> </p> 
            <p style="font: 16px/17px open_sansbold, Helvetica, Arial; margin-top:-3px; color: #336699; font-weight: bold" >  <asp:Label runat="server"  Text='<%#Eval("KitapFiyat")+" TL"%>'></asp:Label></p> 
         </center>
        </div></ItemTemplate>
           
    </asp:ListView>

            </div>
     <br />    <br /> 
</asp:Content>

