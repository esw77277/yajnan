<%@ Page Title="" Language="C#" MasterPageFile="~/emonk.master" AutoEventWireup="true" CodeFile="forgotpwd.aspx.cs" Inherits="forgotpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">



    <section id="contact-us">
        
        <!-- message content -->
        <div class="container fadesimple">
            <div class="col-md-12">
                
                    <div class="messages"></div>
                    <div class="controls">
                        <div class="row">
                            <div class="default-title">
            <h3>Forgot Password</h3>
            
        </div>
                            <div class="col-md-6">
                                 <img src="https://assets-news-bcdn-ll.dailyhunt.in/cmd/resize/400x400_60/fetchdata13/images/1b/57/a5/1b57a5f4f1ef8a1b81bde30ac8e3c740.jpg" width="90%" height="90%" />
                            </div>
                            <div class="col-md-6">
                                <div class="floatings-labels ">
                                    <%--<input name="ctl00$cphBody$txtemailid" type="text" id="cphBody_txtemailid" class="floating-input" placeholder=" " required="required" data-error="Email ID is required." data-dpmaxz-eid="1" data-dpmaxz-pid="1.02.01.t"> --%>
                                    <asp:TextBox ID="txtemail" runat="server" placeholder=" " class="floating-input"></asp:TextBox><br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Orange" ControlToValidate="txtemail" Display="Dynamic" ></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Orange" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                    <span class="form-bar"></span>
                                    <label for="formDate" class="lbltop">Enter your registered Email ID *</label>
                                    <div class="help-block with-errors"></div>
                                </div>
                                Are you a monk? <a style="color:black" rel="registration" href="login.aspx"> Sign in</a>
                            </div>
                            <asp:Button ID="btnsendmail" runat="server" Text="Send" OnClick="btnsendmail_Click" class="btn btn-warning btn-send pull-right" /> 
                            </div>
                        <div class="row">
                             <div class="col-md-6" style="float:right">
                               <%-- <input type="submit" name="ctl00$cphBody$btnSubmit" value="Submit" id="cphBody_btnSubmit" class="btn btn-warning btn-send" data-dpmaxz-eid="2" data-dpmaxz-pid="1.02.02.b">--%>
                           
                           </div>
                        </div>
                        
                          
                      
                    </div>
                
            </div>
            <!-- end of message content -->
             
        </div>
        <!-- container -->
    </section>
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    <%--<asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br />--%>
    <%--<asp:Button ID="btnsendmail" runat="server" Text="Send" OnClick="btnsendmail_Click" />--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" Runat="Server">
</asp:Content>

