<%@ Page Title="" Language="C#" MasterPageFile="~/MstrPge1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="headsetku.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Main.css" rel="stylesheet" />
    Login/Register
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="auto-style1">

    <h1>
        Login</h1>

       <p>
        Username :
        <asp:TextBox ID="txtLoginEmail" runat="server" CssClass="auto-style2"></asp:TextBox>
    </p>
    <p>
        Password :
        <asp:TextBox ID="txtLoginPassword" runat="server" type="password" CssClass="auto-style3"></asp:TextBox>
        
    </p>
    <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
     <asp:Literal ID="litLoginResult" runat="server"></asp:Literal>
    <br />
    <br />
    <asp:Button ID="LogUserIn" runat="server" CssClass="auto-style1" Text="Login" OnClick="Button1_Click" />
  

  <h2>Registration</h2>
    Username: 
    <asp:TextBox ID="txtRegEmail" runat="server"  CssClass="auto-style2"></asp:TextBox>
    <br />
    <br />

    Password: 

    <asp:TextBox ID="txtRegPassword" runat="server" CssClass="auto-style3"></asp:TextBox>
    <br />
    <br />

   
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Register" />
    <br />
    <br />

    <asp:Literal ID="litRegisterError" runat="server" ></asp:Literal>
    <asp:Literal ID="litRegisterResult" runat="server"></asp:Literal>
 </div>

</asp:Content>

