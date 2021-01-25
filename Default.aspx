<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 185px;
        }
      
       
 #slides {
      display: none
    }

    #slides .slidesjs-navigation {
      margin-top:3px;

    }

    #slides .slidesjs-previous {
      margin-right: 5px;
      float: left;
    }

    #slides .slidesjs-next {
      margin-right: 5px;
      float: left;
    }

    .slidesjs-pagination {
      margin: 6px 0 0;
      float: right;
      list-style: none;
    }

    .slidesjs-pagination li {
      float: left;
      margin: 0 1px;
    }

    .slidesjs-pagination li a {
      display: block;
      width: 13px;
      height: 0;
      padding-top: 13px;
      background-image: url(images/Slider/pagination.png);
      background-position: 0 0;
      float: left;
      overflow: hidden;
    }

    .slidesjs-pagination li a.active,
    .slidesjs-pagination li a:hover.active {
      background-position: 0 -13px
    }

    .slidesjs-pagination li a:hover {
      background-position: 0 -26px
    }

    #slides a:link,
    #slides a:visited {
      color: #333
    }

    #slides a:hover,
    #slides a:active {
      color: #9e2020
    }


  </style>

  <style>
    #slides {
    
    }

    .container {
     margin-left:50px;
     float:left;
    
    }

   

 

    /* For larger displays */
    @media (min-width: 520px) {
      .container {
        width: 520px;
          float:left;
       
      }
    }
  </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"  >
     <!-- SlidesJS Required: Start Slides -->
  <!-- The container is used to define the width of the slideshow -->
  <div class="container">
    <div id="slides">
      <img src="images/Slider/1.jpg" width="520" height="300"  /">
      <img src="images/Slider/2.jpg" width="520" height="300" /">
      <img src="images/Slider/3.jpg" width="520" height="300" >
      <img src="images/Slider/4.jpg" width="520" height="300">
    </div>
  </div>
  <!-- End SlidesJS Required: Start Slides -->

  <!-- SlidesJS Required: Link to jQuery -->
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  <!-- End SlidesJS Required -->

  <!-- SlidesJS Required: Link to jquery.slides.js -->
  <script src="js/jquery.slides.min.js"></script>
  <!-- End SlidesJS Required -->

  <!-- SlidesJS Required: Initialize SlidesJS with a jQuery doc ready -->
  <script>
      $(function () {
          $('#slides').slidesjs({
            
              navigation: false
          });
      });
  </script>
  <!-- End SlidesJS Required -->
    <div  style="float:left; background-color:gainsboro; height:300px;width:210px; margin-left:30px; padding-left:50px;">
           <center><p style="margin-top:3px; margin-left:-70px; 
font: 16px/17px open_sansbold, Helvetica, Arial;  color: #336699; font-weight: bold"

">En Çok Satanlar  </p>  <marquee  onmouseover="this.stop()" 
onmouseout="this.start()" behavior="scroll" direction="up" height="260px" >
      
                  
               <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id">
                 
               
   
                   <AlternatingItemTemplate>
                                 <a href="KitapDetay.aspx?kitapId=<%#Eval("Id") %>"> <asp:Image ID="Image1"  ImageUrl='<%#Eval("KitapResim")%>' runat="server" Width="130" Height="180" />   </a> 
          <p style="font: 13px/15px open_sansregular, Helvetica, Arial;
color: #666;
margin-top:3px;

margin-left:10px;
overflow: hidden;
text-overflow: ellipsis;">
            
               <asp:Label ID="Label1" runat="server" Text='<%#Eval("KitapAdı")%>'></asp:Label>

          </p> 
            <p style="font: 16px/17px open_sansbold, Helvetica, Arial; margin-left:30px; margin-top:-3px; color: #336699;  font-weight: bold" > 
                
                 <asp:Label runat="server"  Text='<%#Eval("KitapFiyat")+" TL"%>'></asp:Label></p> 
        
                   
                   </AlternatingItemTemplate>
                                  
               
   
                   <ItemTemplate>
                      <a href="KitapDetay.aspx?kitapId=<%#Eval("Id") %>"> <asp:Image ID="Image1"  ImageUrl='<%#Eval("KitapResim")%>' runat="server" Width="130" Height="180" />   </a> 
          <p style="font: 13px/15px open_sansregular, Helvetica, Arial;
color: #666;
margin-top:3px;
margin-left:10px;
overflow: hidden;
text-overflow: ellipsis;"> <asp:Label ID="Label1" runat="server" Text='<%#Eval("KitapAdı")%>'></asp:Label> </p> 
            <p style="font: 16px/17px open_sansbold, Helvetica, Arial; margin-left:30px;  margin-top:-3px; color: #336699; font-weight: bold" >  <asp:Label runat="server"  Text='<%#Eval("KitapFiyat")+" TL"%>'></asp:Label></p> 
        
                   </ItemTemplate>
                  
                 
                  
               </asp:ListView>
               <p>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kitapConnectionString1 %>" SelectCommand="SELECT TOP (3) SiparisDetay.UrunId, SUM(SiparisDetay.Adet) AS [Toplam Satis], COUNT(*) AS Expr1, Kitaplar.KitapAdı, Kitaplar.KitapDetay, Kitaplar.KitapYazar, Kitaplar.KitapResim, Kitaplar.KitapFiyat, Kitaplar.Id FROM SiparisDetay INNER JOIN Kitaplar ON SiparisDetay.UrunId = Kitaplar.Id AND SiparisDetay.UrunId = Kitaplar.Id GROUP BY SiparisDetay.UrunId, Kitaplar.KitapAdı, Kitaplar.KitapDetay, Kitaplar.KitapYazar, Kitaplar.KitapResim, Kitaplar.KitapFiyat, Kitaplar.Id ORDER BY [Toplam Satis] DESC"></asp:SqlDataSource>
           </center>
                   </marquee>
         </div>



    <div class="orta"  >

        <asp:ListView ID="ListView1" runat="server" EnableTheming="True">
            <ItemTemplate> 
        <div class="icerik" onmouseover="this.style.background ='#E8E8E8'" onmouseout="this.style.background ='#ffffff'">

         <center><a href="KitapDetay.aspx?kitapId=<%#Eval("Id") %>"> <asp:Image ID="Image1"  ImageUrl='<%#Eval("KitapResim")%>' runat="server" Width="130" Height="180" />   </a> 
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
     
    <br />
    
</asp:Content>

