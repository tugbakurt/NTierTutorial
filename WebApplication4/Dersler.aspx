<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Dersler.aspx.cs" Inherits="WebApplication4.Dersler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PlaceHolder2" runat="server">
    <div>
        <form runat="server">

        <asp:Label ID="Label1" runat="server" Text="Ders Seçin"></asp:Label>

        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
    </div>
    <br />

    <div>

        <asp:Label ID="Label2" runat="server" Text="Öğrenci Id"></asp:Label>
       <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

    <br />

    <asp:Button ID="Button1" runat="server" Text="Ders Talep Oluştur" CssClass="btn btn-success" OnClick="Button1_Click" />
        </form>
</asp:Content>
