<%@ Page Title="" Language="C#" MasterPageFile="~/MstrPge1.Master" AutoEventWireup="true" CodeBehind="Contact 1.aspx.cs" Inherits="headsetku.Pages.Contact_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Main.css" rel="stylesheet" />
    <link href="../CSS/Contact1.css" rel="stylesheet" />
    Contact
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <h1>Keep in touch!</h1>
    <h2>Send us your questions and suggestions, we will get back to you soon!</h2>


    <div id="map">
        <script src="../Script/Map.js"></script>
        <script async="async" defer="defer"
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD1LOi5_DFJYzTVA54R9GZQj-oUzTkJuCQ&callback=initMap">
        </script>


    </div>

    <div id="staticmap">
        <img src="../IMAGES/static%20map.JPG" runat="server" alt="Headset Purchase" style="text-align: center" />
    </div>


    <div id="Contact-container">

        <div class="auto-style1">
            Name:
            <asp:TextBox ID="txtName" runat="server" CssClass="auto-style1" Width="209px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required."></asp:RequiredFieldValidator>
            <br />
            <br />

            Phone Number:
            <asp:TextBox ID="txtNo" runat="server" CssClass="auto-style2" Width="204px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqPhoneValidator" runat="server" ControlToValidate="txtNo" ErrorMessage="Phone Number is required."></asp:RequiredFieldValidator>

            <br />
            <br />

            Email:
            <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style3" Width="203px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFieldEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExprChkEMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />

            Subject:
            <asp:TextBox ID="txtSubject" runat="server" CssClass="auto-style4" Width="199px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqSubValidator" runat="server" ControlToValidate="txtSubject" ErrorMessage="Subject is required."></asp:RequiredFieldValidator>
            <br />
            <br />

            Message:
            <br />
            <asp:TextBox ID="txtMsg" runat="server" Height="137px" TextMode="MultiLine" Width="374px" CssClass="auto-style5"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqMsgValidator" runat="server" ControlToValidate="txtMsg" ErrorMessage="Message is required."></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Button ID="btnSendEmail" runat="server" OnClick="SendMessageClick" Text="Send" />

            <br />
            <br />
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
            <br />
        </div>

    </div>

</asp:Content>

