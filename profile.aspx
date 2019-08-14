<%@ Page Title="" Language="C#" MasterPageFile="~/emonk.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">
    <div class="row">
        <div class="col-md-4">
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
        </div>
       
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" Runat="Server">
</asp:Content>

