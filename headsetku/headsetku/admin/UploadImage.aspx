<%@ Page Title="" Language="C#" MasterPageFile="~/MstrPge1.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="headsetku.admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link href="../CSS/Main.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div id="container">
        <h1>Upload Product Images</h1>
        <asp:FileUpload ID="imageFileUploadControl" runat="server" Height="38px" Width="371px" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" Text="Upload" Width="121px" />
        <asp:Literal ID="litRegisterError" runat="server" ></asp:Literal>
    <br />
    <br />
    <asp:Image ID="CurrentImage" runat="server" Height="265px" Width="310px" />
     <br />
        <a href="list.aspx">List</a>
        <a href="add.aspx">Add</a>
    </div>

</asp:Content>
