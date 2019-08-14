<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ap.aspx.vb" Inherits="ap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvap" AutoGenerateColumns="false" runat="server">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="no" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="name" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="tdp" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="tsr" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="bjp" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="others" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="sle" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="winn" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="margin" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
