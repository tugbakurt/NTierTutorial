<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="OgrenciListesi.aspx.cs" Inherits="WebApplication4.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <th>Öğrenci Id</th>
            <th>Öğrenci Ad</th>
            <th>Öğrenci Soyad</th>
            <th>Öğrenci Numara</th>
            <th>Öğrenci Şifre</th>
            <th>Öğrenci Fotoğraf</th>
            <th>Bakiye</th>



        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
            <tr>
                <td><%#Eval("id")%></td>
                <td><%#Eval("ad")%></td>
                <td><%#Eval("soyad")%></td>
                <td><%#Eval("numara")%></td>
                <td><%#Eval("fotograf")%></td>
                <td><%#Eval("sifre")%></td>
                <td><%#Eval("bakiye")%></td>
                <td>

                    <asp:HyperLink NavigateUrl='<%#"~/OgrenciSil.aspx?Ogrid="+Eval("id") %>' ID="HyperLink1" runat="server" cssclass="btn btn-danger">Sil</asp:HyperLink>
                    <asp:HyperLink NavigateUrl='<%#"~/OgrenciGuncelle.aspx?Ogrid="+Eval("id")%>' ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                </td>
              
            </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>


    </table>

</asp:Content>
