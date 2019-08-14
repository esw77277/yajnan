<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ency - Decy.aspx.cs" Inherits="Ency___Decy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <%--<div class="container a" id="BAlert" visible="true" runat="server">
                    <div class="alert alert-danger alert-dismissable" style="border: 0px solid" id="alertmod" runat="server">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                        <strong>
                            <asp:Label ID="lblTxt1" runat="server" Text=""></asp:Label>
                        </strong>
                        <asp:Label ID="lblTxt2" runat="server" Visible="true" Text=""></asp:Label>
                    </div>
                </div>--%>
                <div class="row">
                    <div class="col-lg-6 col-md-8 col-sm-12">
                        <h2><a href="javascript:void(0);" class="btn btn-xs btn-link btn-toggle-fullwidth"><i class="fa fa-arrow-left"></i></a>Manual Encryption & Decryption</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Dashboard.aspx"><i class="icon-home"></i></a></li>
                            <li class="breadcrumb-item active">Encrypt - Decrypt Page</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <%--<div class="header">
                            <h2>Leads List</h2>
                            <ul class="header-dropdown">
                                <li>
                                    <button id="AsgnAllbtn" runat="server" visible="true" class="btn btn-info fa fa-check" >Assign all</button>
                                </li>
                            </ul>
                        </div>--%>
                        <div class="body">
                            <%--<div class="col-md-12">--%>
                            <div class="row">
                                <div class=" col-md-4">
                                    <div class="form-group">
                                        <asp:TextBox ID="nrmltxtforencrypt" runat="server" CssClass="form-control" placeholder="Original Text" TabIndex="1"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="col-md-3 float-sm-left"></div>
                                    <button id="encrybtn" runat="server" visible="true" class="col-md-6 float-sm-left btn btn-primary" onserverclick="encrybtn_ServerClick"><i class="fa fa-lock"></i> Encrypt</button>
                                    <div class="col-md-3 float-sm-left"></div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:TextBox ID="encrytxt" runat="server" ReadOnly="true" CssClass="form-control" placeholder="Encrypted Text" TabIndex="2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:TextBox ID="nrmltxtfordecrypt" runat="server" CssClass="form-control" placeholder="Original Text" TabIndex="2"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="col-md-3 float-sm-left"></div>
                                    <button id="decrybtn" runat="server" visible="true" class=" float-sm-left col-md-6 btn btn-secondary" onserverclick="decrybtn_ServerClick"><i class="fa fa-unlock"></i> Decrypt</button>
                                    <div class="col-md-3 float-sm-left"></div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:TextBox ID="decrytxt" runat="server" ReadOnly="true" CssClass="form-control" placeholder="Decrypted Text" TabIndex="3"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="lbltxt" runat="server" title="info about used cipher key" class=" alert-info">
                                    Key should be either of 128 bit or of 192 bit. Here key is of 192-bit.
                                </label>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" id="cipherCB" title="cipher key" onclick="cipherkeyFun()" />
                                <p id="cbtxt">Click here to know which cipher key we are using.</p>
                            </div>
                            <%--</div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
    <script>
        function cipherkeyFun() {
            if (document.getElementById("cipherCB").checked)
                document.getElementById("cbtxt").innerText = "S2rd-N5ae-P3jv4-L5ap-2kz";
            else
                document.getElementById("cbtxt").innerText = "Click here to know which cipher key we are using.";
            //ctxt.outerText = "S9Rh-nh@1-pojs6-l3as-2kz";
        }
    </script>
</body>
</html>
