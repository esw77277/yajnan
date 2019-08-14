<%@ Page Title="" Language="C#" MasterPageFile="emonk.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <section id="contact-us">
        <!-- message content -->
        <div class="container fadesimple">

            <div class="col-md-4 hidden-xs hidden-sm">


                <img src="img/techbites.png" class="img-responsive img-rounded" />

            </div>
            <!-- end of message content -->
            <div class="col-sm-8 contact-info">
                <!-- header contact info -->
                <div class="col-sm-12">
                    <div class="default-title">
                        <h3>CONTACT US</h3>
                        <div class="alert alert-success" role="alert" runat="server" id="alertmod" visible="false">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <strong>
                                <asp:Label ID="alertlabel" runat="server"></asp:Label></strong>
                        </div>

                    </div>

                    <div class="messages"></div>
                    <div class="controls">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="floatings-labels">
                                    <asp:TextBox class="floating-input" data-error="Name is required." ID="txtUserName" runat="server" name="name" placeholder=" " required="required" type="text"></asp:TextBox>
                                    <span class="form-bar"></span>
                                    <label for="formDate" class="lbltop">Name</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ErrorMessage="Name is required." ForeColor="#ff9933" Display="Dynamic" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="floatings-labels">

                                    <asp:TextBox class="floating-input" data-error="Email is required." ID="txtmail" runat="server" name="surname" placeholder=" " required="required"></asp:TextBox>
                                    <span class="form-bar"></span>
                                    <label for="formDate" class="lbltop">Email ID</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is required." ForeColor="#ff9933" Display="Dynamic" ControlToValidate="txtmail"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#ff9933" Display="Dynamic" ControlToValidate="txtmail" ErrorMessage=" Invalid Email"></asp:RegularExpressionValidator>

                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="floatings-labels">

                                    <asp:TextBox class="floating-input" MaxLength="10" data-error="Mobile is required." ID="txtmobile" runat="server" name="surname" placeholder=" " required="required"></asp:TextBox>
                                    <span class="form-bar"></span>
                                    <label for="formDate" class="lbltop">Mobile Number</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mobile is required." ForeColor="#ff9933" Display="Dynamic" ControlToValidate="txtmobile"></asp:RequiredFieldValidator>
                                    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                        ControlToValidate="txtmobile" ErrorMessage="Enter valid number" ForeColor="Orange" Display="Dynamic"
                                        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>--%>

                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="floatings-labels">
                                    <asp:TextBox ID="txtsubject" runat="server" class="floating-input" placeholder=" " TextMode="MultiLine"></asp:TextBox>
                                    <span class="form-bar"></span>
                                    <label for="formDate" class="lbltop">Subject</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject is required." ForeColor="#ff9933" Display="Dynamic" ControlToValidate="txtsubject"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="floatings-labels" >
                                    <asp:TextBox ID="txtbody" runat="server"  CssClass="floating-input"  placeholder=" " TextMode="MultiLine"></asp:TextBox>
                                    <span class="form-bar"></span>
                                    <label for="formDate" class="lbltop">Message</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Subject is required." ForeColor="#ff9933" Display="Dynamic" ControlToValidate="txtbody"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                           
                        </div>
 <br />

                        <div class="row">

                            <div class="col-md-12">
                                
                                    <asp:Button ID="btnsubmit" runat="server" style="padding:1%;font-size:large" OnClick="btnsubmit_Click" CssClass="btn btn-warning btn-send btn-block" title="text" Text="Submit"></asp:Button>
                                
                            </div>

                        </div>
                        <div class="row"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- container -->
    </section>
    <!-- Go to www.addthis.com/dashboard to customize your tools -->
    <%--<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5c079ddf7879b94b"></script>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" runat="Server">
    <script type="text/javascript">
        window.onload = function () {
            var seconds = 4;
            setTimeout(function () {
                document.getElementById("<%=alertmod.ClientID %>").style.display = "none";
                 window.location.href = "andhra.aspx";
            }, seconds * 1000);
        };
    </script>
    <script>
        $("#licntctus").addClass("active");
    </script>
</asp:Content>

