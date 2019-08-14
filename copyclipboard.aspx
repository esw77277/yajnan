<%@ Page Language="C#" AutoEventWireup="true" CodeFile="copyclipboard.aspx.cs" Inherits="copyclipboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="btn button btn-sm" onclick="copyToClipboard('#<%#Eval("2") %>')">Copy</div>
        </div>
    </form>
</body>
</html>
