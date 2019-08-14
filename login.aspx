<%@ Page Title="" Language="C#" MasterPageFile="~/emonk.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">






       <div class="container fadesimple">
    <section>
        <div class="contact-info">
            <div class="container">
                   <div class="default-title">
                        <h3>Sign IN</h3>
                    </div>



                <div class="row" style="padding:10px">
                     <div class="col-md-6">
                         <img src="https://assets-news-bcdn-ll.dailyhunt.in/cmd/resize/400x400_60/fetchdata13/images/1b/57/a5/1b57a5f4f1ef8a1b81bde30ac8e3c740.jpg" width="90%" height="90%" />
                    </div>
                    <div class="col-md-6">
                       
              <asp:Label ID="txtueremailmsg" runat="server"  ForeColor="Orange"></asp:Label>
                        <asp:Label ID="Label1" runat="server" ForeColor="Orange"></asp:Label>
                      <div class="floatings-labels">
                                    <asp:TextBox class="floating-input" placeholder=" " ID="txtemail" runat="server" name="fromDate"></asp:TextBox>
                                     <span class="form-bar"></span>
                                    <label class="lbltop" for="fromDateID">Email</label>
                          
                                    <div class="help-block with-errors">
                                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Orange" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Orange"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                   
                    <div class="floatings-labels">
                                    <asp:TextBox class="floating-input" placeholder=" " ID="txtpwd" runat="server" TextMode="Password" name="fromDate"></asp:TextBox>
                                     <span class="form-bar"></span>
                                    <label class="lbltop" for="fromDateID">Password</label>
                                    <div class="help-block with-errors">
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ControlToValidate="txtpwd" ErrorMessage="*" ForeColor="Orange"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                   
                    <div class="row">
                         <a class="design2" style="padding-left:12px"><input id="cphBody_RememberMe"  type="checkbox" name="ctl00$cphBody$RememberMe" data-dpmaxz-eid="3" data-dpmaxz-pid="1.04.03.c"><label for="cphBody_RememberMe"></label></a> Remember Me
                            <div class="col-md-12" style="padding-top:10px">
                                <div class="col-md-6 design2">
                                    <a rel="forgot-password" href="forgotpwd.aspx">Forgot Password? </a>
                                </div>
                                <div class="col-md-6 design2">
                                   Don't have account?<a rel="registration" href="userreg.aspx">Sign UP</a>
                                </div>

                            </div>
                        </div>
                        <div class="row" style="padding-top:10px">
                            <div class="col-md-12">
                                <div>
                                      <asp:Button ID="btnlogin" runat="server" Text="Sign in" style="padding:1%;font-size:large" CssClass="btn btn-warning btn-send btn-block" OnClick="btnlogin_Click" />
                                    
                                </div>
                            </div>

                        </div>
                    
                     
                    <div class="floatings-labels">
                 
                </div>
                        </div>
                   
                    </div>
            </div>
        </div>
    </section>
                </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" Runat="Server">
</asp:Content>

