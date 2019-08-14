<%@ Page Title="" Language="C#" MasterPageFile="~/emonk.master" AutoEventWireup="true" CodeFile="userreg.aspx.cs" Inherits="userreg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <link src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
            <div class="container fadesimple">
    <section>
        <div class="contact-info">
            <div class="container">
                   <div class="default-title">
                        <h3>Sign up</h3>
                    </div>
                <div class="row" style="padding:10px">
                     <div class="col-md-6">
                         <img src="https://assets-news-bcdn-ll.dailyhunt.in/cmd/resize/400x400_60/fetchdata13/images/1b/57/a5/1b57a5f4f1ef8a1b81bde30ac8e3c740.jpg" width="90%" height="90%" />
                    </div>
                    <div class="col-md-6">
             <%--alert code--%>
                            <div class="container a" style="padding-right: 100px" visible="false" id="alertt" runat="server">
                                <div class="alert alert-success alert-dismissable" id="alertmod">
                                    <strong>
                                        <p id="alertmsg" runat="server"></p>
                                    </strong>
                                </div>
                            </div>
                            <%--end--%>
                      <div class="floatings-labels">
                                    <asp:TextBox class="floating-input" placeholder=" " ID="txtemail" runat="server" name="fromDate"></asp:TextBox>
                                     <span class="form-bar"></span>
                                    <label class="lbltop" for="fromDateID">Email</label>
                          <asp:Label ID="txtueremailmsg" runat="server"></asp:Label>
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
                    <div class="floatings-labels">
                                    <asp:TextBox class="floating-input" placeholder=" " ID="txtcnfpwd" TextMode="Password" runat="server" name="fromDate"></asp:TextBox>
                                   
                        <span class="form-bar"></span>
                                    <label class="lbltop" for="fromDateID">Confirm Password</label>
                                    <div class="help-block with-errors">
                                      <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtcnfpwd" ControlToCompare="txtpwd" runat="server" ForeColor="Orange" Display="Dynamic" ErrorMessage="password and confirmation password do not match"></asp:CompareValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ControlToValidate="txtcnfpwd" ErrorMessage="*" ForeColor="Orange"></asp:RequiredFieldValidator>
                                 
                                        </div>
                                </div>
                    Are you a monk? <a style="color:black" rel="registration" href="login.aspx"> Sign in</a>
                    
                     
                    <div class="floatings-labels">
                          
                    <asp:Button ID="btnreg" runat="server" Text="Sign up" style="padding:1%;font-size:large" CssClass="btn btn-warning btn-send btn-block" OnClick="btnreg_Click" />
                </div>
                        </div>
                    
                   
                    </div>
            </div>
        </div>
    </section>
                </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" runat="Server">
    
    <script src="javascript/jquery-3.1.1.min.js"></script>
    <script>
        var useremail = $("$txtemail").val();
        var pwd = $("#txtpwd").val();
        var cmfpwd = $("#txtcnfpwd").val();
        var emailerror = $("#errormsg").val();
        var pwderror = $("#txtpwderror").val();
        var cnfpwderror = $("#txtcnfpwderror").val();

        function Validation() {
            if ((useremail.length == 0) || (pwd.length == 0) || (cmfpwd.length == 0)) {
                
                emailerror.html("*");
                pwderror.html("*");
                cnfpwderror.html("*");
            }
        }

        $("#btnsubmit").click(function () {
            //Validation();
            alert("hii");
        });
    </script>
    <script>
        $(document).ready(function () {
            $('#<%=txtemail .ClientID%>').keyup(function () {
                var userName = $(this).val();
                if (userName.length >= 1) {
                    $.ajax({
                        url: 'emonk.asmx/UserNameExists',
                        method: 'post',
                        data: { userName: userName },
                        dataType: 'json',
                        success: function (data) {
                            var divElement = $('#<%=txtueremailmsg .ClientID%>');
                            if (data.UserNameInUse)
                            {
                                divElement.text('Already Registered'); divElement.css('color', 'orange');
                            }
                            else
                            {
                                divElement.text(userName); divElement.css('color', 'green')
                                
                            }
                        }, error: function (err) { alert(err) }
                    })
                }
            })
        });

       
        var seconds = 3;
        setTimeout(function () {
            document.getElementById("<%=alertt.ClientID %>").style.display = "none";
            window.location.href = "login.aspx";
        }, seconds * 1000);
        
    </script>
</asp:Content>

