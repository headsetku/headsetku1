<%@ Page Title="" Language="C#" MasterPageFile="~/MstrPge1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="headsetku.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Main.css" rel="stylesheet" />

    <style>
        .rollno {background-color: Aqua}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div id="repeater">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand1">
      <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>
            <ul>
                <li>
                    <asp:Image ID="Image1" runat="server" Height="100px" Width="200px" 
                      ImageUrl='<%#"~/ProductImg/"+ Eval("ProductId") + ".jpg" %>'/>
                    
                    
                    <p style="font-size: larger"><strong> Available Ties: </strong>

                 <a href="<%#Eval("ProductId", "Pages/Products.aspx?Id={0}") %>"> <%#Eval("ProductId")%> </a> <%#Eval("ProductId") %>
                    </p>
                </li>
            </ul>
    </ItemTemplate>
 </asp:Repeater>
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626512_headsetkuConnectionString2 %>" SelectCommand="SELECT ProductId, ProductDesc, Quantity, Price FROM tblProduct WHERE (Quantity &gt; 0)">
    </asp:SqlDataSource>
    <br />
    <br />
    <a href="admin/UploadImage.aspx" runat="server">UploadImage</a>
</asp:Content>
