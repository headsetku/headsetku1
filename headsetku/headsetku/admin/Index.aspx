<%@ Page Title="" Language="C#" MasterPageFile="~/MstrPge1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="headsetku.admin.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
     <div class="container">
        <h1>Administrator</h1>
        <p>Welcome to Administrator Page.</p>
        
        <p><a href="list.aspx">List Products</a></p>
       
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log Out" Height="67px" Width="164px" />
        </p>
      
    </div>
</asp:Content>
