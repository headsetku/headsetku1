<%@ Page Title="" Language="C#" MasterPageFile="~/MstrPge1.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="headsetku.admin.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Main.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
  
    <div id="add">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductDesc" HeaderText="ProductDesc" SortExpression="ProductDesc" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit" ShowHeader="True" Text="Edit" />
                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Update" ShowHeader="True" Text="Update" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626512_headsetkuConnectionString2 %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
        <br />
        <br />
     <a href="add.aspx">Add Product</a>
        <br />
     <a href="list.aspx">List</a>
        <a href="Index.aspx">Go Back</a>
        </div>
  
</asp:Content>
