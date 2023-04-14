<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PlaceHolder2" runat="server">
    <form id="Form1" runat="server">
       <div class="form-group">
           <div>
           <asp:Label for="txtad" runat="server" Text="Öğrenci Adı" style="font-weight: bold"></asp:Label>
           <asp:TextBox ID="txtad" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           </br>
            <div>
           <asp:Label for="txtsoyad" runat="server" Text="Öğrenci Soyadı" style="font-weight: bold"></asp:Label>
           <asp:TextBox ID="txtsoyad" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
           
           </br>
            <div>
           <asp:Label for="txtnumara" runat="server" Text="Öğrenci Numara" style="font-weight: bold"></asp:Label>
           <asp:TextBox ID="txtnumara" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
        
           </br>
            <div>
           <asp:Label for="txtsifre" runat="server" Text="Öğrenci Şifre" style="font-weight: bold"></asp:Label>
           <asp:TextBox ID="txtsifre" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
        
           </br>
            <div>
           <asp:Label for="txtfoto" runat="server" Text="Öğrenci Fotoğraf" style="font-weight: bold"></asp:Label>
           <asp:TextBox ID="txtfoto" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
        </br>
       </div>



    <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" CssClass="btn btn-info"/>
    </form>
    
</asp:Content>
