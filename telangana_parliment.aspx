<%@ Page Title="" Language="C#" MasterPageFile="~/emonk.master" AutoEventWireup="true" CodeFile="telangana_parliment.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <link rel="stylesheet" href="style/card.css" />
    <style>
        #return-to-top {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: rgb(0, 0, 0);
            background: rgba(0, 0, 0, 0.7);
            width: 50px;
            height: 50px;
            display: block;
            text-decoration: none;
            -webkit-border-radius: 35px;
            -moz-border-radius: 35px;
            border-radius: 35px;
            display: none;
            -webkit-transition: all 0.3s linear;
            -moz-transition: all 0.3s ease;
            -ms-transition: all 0.3s ease;
            -o-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }


            #return-to-top i {
                color: #fff;
                margin: 0;
                position: relative;
                left: 16px;
                top: 13px;
                font-size: 19px;
                -webkit-transition: all 0.3s ease;
                -moz-transition: all 0.3s ease;
                -ms-transition: all 0.3s ease;
                -o-transition: all 0.3s ease;
                transition: all 0.3s ease;
            }

            #return-to-top:hover {
                background: rgba(0, 0, 0, 0.9);
            }

                #return-to-top:hover i {
                    color: #fff;
                    top: 5px;
                }



        .readonly {
            pointer-events: none;
        }

        .form-control {
            padding: 10px 7px !important;
        }

        .btn-lg {
            padding: 5px 17px !important;
        }

        .btnz {
            display: block;
            float: left;
            padding: 3px 15px;
            border: none;
            background-color: #ececec;
            text-decoration: none;
            font-size: 16px;
            color: #FFF;
        }

            .btnz:hover {
                color: #efefef;
            }

        .facebook {
            background-color: #3b5998;
            border-radius: 6px;
        }

        .gplus {
            background-color: #dd4b39;
            border-radius: 6px;
        }

        .twitter {
            background-color: #55acee;
        }

        .stumbleupon {
            background-color: #eb4924;
            border-radius: 6px;
        }

        .pinterest {
            background-color: #70E777;
            border-radius: 6px;
        }

        #btnpopup {
            padding: 6px 10px !important;
        }

        .trs {
            background-color: hotpink;
            color: white !important;
        }

        .inc {
            background-color: #008000;
            color: white !important;
        }

        .others {
            background-color: aqua;
            color: white !important;
        }

        /*.bjp {
            background-color: #FF6600;
            color: white !important;
        }*/
    </style>
    <meta property="fb:app_id" content="1553498291449422" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="http://ap.electionmonk.com" />
    <meta property="og:title" content="Election Monk - View, Forecast and Share" />
    <meta property="og:description" content="Become a pollster. Predict your leader. A simple visual tool to forecast your own election results" />
    <meta property="og:image" content="http://ap.electionmonk.com/Images/emonkfb.png" />
    <link href="style/andhra.css" rel="stylesheet" />
    <!-- ICON NEEDS FONT AWESOME FOR CHEVRON UP ICON -->
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container-fluid">
        <section>

            <div class="contact-info">
                <div class="row" style="padding-top: 10px">
                    <div class="col-md-5">
                        <h1 style="text-align: left">Telangana</h1>
                        <div id="ap-map">
                            <svg width="700px" version="1.1" viewBox="0 0 140.41731 75.28949">
                                <g transform="translate(-32.600905,-79.664762)" fill="#916f6f" stroke-width=".61885589">
                                    <a xlink:title="Telangana">
                                        <path fill="#916f6f" stroke-width=".61885589" d="m49.987938 150.73957c-0.187826-0.30389-1.020644-0.38211-1.850712-0.17374-1.411375 0.35423-1.509212 0.21823-1.509212-2.09753 0-1.63026 0.317151-2.59801 0.928284-2.83251 1.884885-0.72331 0.985696-2.22782-1.576327-2.63752l-2.504607-0.4005 1.269259-1.35106c0.698093-0.7431 1.229808-2.0282 1.181586-2.85582-0.04823-0.8276 0.125929-3.24526 0.386998-5.37259 0.338399-2.75737 0.27242-3.86783-0.229805-3.86783-1.196833 0 2.001192-4.33324 3.484177-4.72097 1.932026-0.50514 1.744183-1.98527-0.309429-2.43823-0.93602-0.20643-1.948015-0.43304-2.248877-0.50354-0.300865-0.0705-0.092-0.58326 0.464141-1.13937 0.556142-0.55616 1.011166-1.21801 1.011166-1.47081 0-0.25276 0.399737-0.9013 0.888306-1.44118 0.488569-0.53987 1.048863-2.70022 1.245098-4.80085 0.337931-3.61739 0.2828-3.83056-1.043021-4.0327-0.878618-0.13394-1.307217-0.55358-1.151129-1.12702 0.136775-0.50245 0.276016-1.74904 0.309429-2.77014 0.04683-1.43133 0.379687-1.90187 1.453172-2.05433 0.765835-0.10876 1.392426-0.58642 1.392426-1.06147 0-0.47501 0.855571-1.838138 1.901267-3.029128l1.901269-2.165425-1.285825-1.380179c-0.861923-0.925142-1.080681-1.585304-0.663557-2.002428 0.342248-0.342261 0.622268-1.107119 0.622268-1.699689 0-1.289883 1.371453-2.296382 1.716901-1.260051 0.325386 0.976174 2.112962 0.922629 3.518843-0.105353 0.850554-0.621932 0.945327-0.954316 0.37297-1.308075-0.544238-0.336365-0.346574-0.683853 0.679819-1.195101 1.337067-0.666 1.879267-2.199791 2.484744-7.02883 0.116452-0.928806 0.90688-1.013828 1.437846-0.154729 0.210361 0.340371 1.758465 0.618868 3.44023 0.618868 2.645185 0 3.057758 0.167002 3.057758 1.2377 0 0.68074 0.278485 1.2377 0.618854 1.2377 0.340372 0 0.618857 0.556994 0.618857 1.237735 0 0.907641 0.412571 1.237687 1.54714 1.237687 0.850925 0 1.643578-0.06965 1.76145-0.154693 0.117873-0.08515 0.662645 0.217341 1.210605 0.672131 1.182307 0.981236 2.380521 0.443198 1.885551-0.846673-0.49825-1.298422 0.40554-1.121507 2.02025 0.39543 1.29822 1.219613 1.4797 1.239591 2.80772 0.309422 1.90694-1.335688 3.32127-1.252251 5.44985 0.321473 1.54566 1.142765 1.73537 1.611061 1.44148 3.558429-0.18613 1.233378-0.58064 2.507029-0.87668 2.830404-0.77341 0.844747-0.66312 2.671012 0.17825 2.951471 0.39408 0.131357 0.69126 1.126569 0.66041 2.211595-0.0632 2.222069 1.65042 3.841289 4.06526 3.841289 0.7995 0 1.893 0.43934 2.42998 0.97632s1.47248 0.84658 2.07889 0.68801c1.846049-0.48276 5.603769 4.75579 5.072289 7.07113-0.15871 0.69139 0.32741 1.11116 1.57599 1.36088 1.82645 0.36528 2.38933 1.26992 3.15199 5.06562 0.28228 1.40491 0.67273 1.8142 1.60498 1.68241 0.67756-0.0957 3.12628-0.31352 5.44158-0.4839l4.20964-0.30979-0.75868 1.41222c-0.41728 0.7767-0.93045 2.2469-1.14038 3.26707-0.21148 1.02768-0.78451 1.86125-1.28496 1.86924-1.73827 0.0277-4.00485 1.10525-4.84942 2.3055-0.63706 0.90536-1.30029 1.12093-2.63014 0.85498-0.97804-0.19563-1.78712-0.15376-1.79795 0.093-0.0106 0.24677-0.4041 0.95581-0.87395 1.57564-0.81027 1.06893-0.95837 1.07316-2.87503 0.082-1.82993-0.94627-2.08782-0.95324-2.731-0.0736-0.46634 0.63775-1.208319 0.84108-2.160529 0.59208-1.17318-0.30681-1.37492-0.18291-1.05587 0.64851 0.44439 1.15808-0.78903 1.41452-1.82427 0.37927-0.45208-0.45208-1.142-0.42362-2.27787 0.094-1.91469 0.87238-2.78901 2.9446-1.5647 3.70849 1.191 0.74311-0.19885 2.7874-1.72127 2.53178-2.30716-0.38736-5.22879-0.22393-5.96632 0.33378-0.4155 0.31417-1.93631 0.90885-3.37958 1.32148-2.0602 0.58902-2.71032 1.11103-3.025177 2.42905-0.755664 3.16332-1.365446 3.85301-2.893065 3.27221-1.629502-0.61955-3.525321 0.46345-3.525321 2.01383 0 0.63052-0.340265 0.86479-0.928284 0.63916-0.602632-0.23127-0.928285 0.0158-0.928285 0.70448 0 0.77387-0.292853 0.93558-1.082996 0.59804-1.121753-0.47924-2.536706-0.56424-6.497987-0.39043-1.874199 0.0822-2.320708 0.33996-2.320708 1.33954 0 0.68074-0.208867 1.26553-0.464144 1.29953-2.876539 0.38331-8.906921 0.29609-9.171906-0.13269z" />
                                    </a>
                                </g>
                            </svg>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row" style="display: none;">

                                    <div id="divPredTable">
                                        <span></span>
                                        <p>
                                            The prediction  that comes close to final verdict on Dec 11th will <b style="color: #ff0000;">win Rs.20,000</b> cash prize!
                                    <ul class="link">
                                        <li>1. Login / Signup
                                        </li>
                                        <li>2. Predict your State and/or District winners and SAVE.
                                        </li>
                                        <li>3. Share your Predictions (shortcode) on FB/Twitter using <b style="font-style: italic">#electionmonk</b> handle

                                        </li>
                                    </ul>

                                            <b>*On Dec 10th Midnight IST we will display the Exit poll results from all   users</b>

                                        </p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="box sl1 fadesimple mtb-12">
                                            <h3>Prediction</h3>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="col-md-3">
                                                        <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                            <div class="panel-heading" style="background-color: #E52E73">
                                                                <h1 class="panel-title text-center" style="color: white">TRS</h1>
                                                            </div>
                                                            <div class="panel-body text-center">
                                                                <strong style="font-size: 33px; color: #E52E73">
                                                                    <asp:Label ID="lbltrs" runat="server" Text="0"></asp:Label></strong>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                            <div class="panel-heading" style="background-color: #3F880C">
                                                                <h1 class="panel-title text-center" style="color: white">INC</h1>
                                                            </div>
                                                            <div class="panel-body text-center">
                                                                <strong style="font-size: 33px; color: #3F880C">
                                                                    <asp:Label ID="lblinc" runat="server" Text="0"></asp:Label></strong>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                            <div class="panel-heading" style="background-color: #FF6600">
                                                                <h1 class="panel-title text-center" style="color: white">BJP</h1>
                                                            </div>
                                                            <div class="panel-body text-center">
                                                                <strong style="font-size: 33px; color: #FF6600">
                                                                    <asp:Label ID="lblbjp" runat="server" Text="0"></asp:Label></strong>
                                                            </div>
                                                        </div>
                                                    </div>



                                                    <div class="col-md-3">
                                                        <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                            <div class="panel-heading" style="background-color: #002eff">
                                                                <h1 class="panel-title text-center" style="color: white">Others</h1>
                                                            </div>
                                                            <div class="panel-body text-center">
                                                                <strong style="font-size: 33px; color: #002eff">
                                                                    <asp:Label ID="lblothers" runat="server" Text="0"></asp:Label></strong>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="display: none">

                                    <div>
                                        <span></span>
                                        <div class="col-md-12">
                                            <div class="box sl1 fadesimple mtb-12">
                                                <h3>Your Prediction (Total Seats : 17) </h3>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <div class="floatings-labels">
                                                            <asp:TextBox ID="txtjana" runat="server" placeholder=" " class="floating-input totalCount"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ValidationGroup="one" ForeColor="Orange" ControlToValidate="txtjana"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Orange" ErrorMessage="Enter numbers only" ControlToValidate="txtjana" ValidationGroup="one"
                                                                ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                                            <span class="form-bar"></span>
                                                            <label for="fromDateID" class="lbltop" id="colortrs">TRS </label>
                                                            <span id="cphBody_rfvTxtTrs" class="rfv" style="display: none;">*Required</span>
                                                            <span id="cphBody_RegularExpressionValidator3" style="color: Red; display: none;">*Allows only numbers</span>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="floatings-labels">
                                                            <asp:TextBox ID="txttdp" runat="server" placeholder=" " class="floating-input totalCount"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ValidationGroup="one" ForeColor="Orange" ControlToValidate="txttdp"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Orange" ErrorMessage="Enter numbers only" ControlToValidate="txttdp" ValidationGroup="one"
                                                                ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                                            <span class="form-bar"></span>
                                                            <label for="fromDateID" class="lbltop" id="colorkutai">INC </label>
                                                            <span id="cphBody_rfvTxtKutami" class="rfv" style="display: none;">*Required</span>
                                                            <span id="cphBody_RegularExpressionValidator1" style="color: Red; display: none;">*Allows only numbers</span>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="floatings-labels">
                                                            <%--<input name="ctl00$cphBody$txtBJP" type="text" id="cphBody_txtBJP" class="floating-input totalCount" placeholder=" " data-dpmaxz-eid="3" data-dpmaxz-pid="1.04.03.t">--%>
                                                            <asp:TextBox ID="txtysr" runat="server" placeholder=" " class="floating-input totalCount"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ValidationGroup="one" ForeColor="Orange" ControlToValidate="txtysr"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Orange" ErrorMessage="Enter numbers only" ControlToValidate="txtysr" ValidationGroup="one"
                                                                ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                                            <span class="form-bar"></span>
                                                            <label for="fromDateID" class="lbltop" id="colorbjp">BJP </label>
                                                            <span id="cphBody_rfvTxtBjp" class="rfv" style="display: none;">*Required</span>
                                                            <span id="cphBody_RegularExpressionValidator2" style="color: Red; display: none;">*Allows only numbers</span>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="floatings-labels">
                                                            <%--<input name="ctl00$cphBody$txtOthers" type="text" id="cphBody_txtOthers" class="floating-input totalCount" placeholder=" " data-dpmaxz-eid="4" data-dpmaxz-pid="1.04.04.t">--%>
                                                            <asp:TextBox ID="txtbjp" runat="server" placeholder=" " class="floating-input totalCount"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ValidationGroup="one" ForeColor="Orange" ControlToValidate="txtbjp"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Orange" ErrorMessage="Enter numbers only" ControlToValidate="txtbjp" ValidationGroup="one"
                                                                ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                                            <span class="form-bar"></span>
                                                            <label for="fromDateID" class="lbltop" id="colorothe">Others </label>
                                                            <span class="rfv" style="display: none;">*Required</span>
                                                            <span style="color: Red; display: none;">*Allows only numbers</span>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <p class="form-control" style="background-color: #eff0f2; font-size: small;">
                                                            Count:
                                                        <asp:Label runat="server" ForeColor="#4286f4" ID="labelId" Text=""></asp:Label>
                                                        </p>
                                                    </div>
                                                    <div class="row col-md-12">
                                                        <span id="cphBody_lblerror">
                                                            <asp:Label ID="lbler" runat="server"></asp:Label>
                                                        </span>
                                                    </div>
                                                    <b></b>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">

                                    <div class="col-md-3 pull-right" style="padding-top: 25px;">

                                        <button id="btnpred" type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Predict</button>
                                        <%-- <asp:Button runat="server" Text="Predict" OnClick="btn_upredict_Click" data-toggle="modal" data-target="#myModal"  class="btn btn-warning btn-send btn-block" Style="color: White;" ValidationGroup="one" /> --%>
                                        <%-- <a id="cphBody_btnSubmit" class="btn btn-warning btn-send btn-block" href='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$cphBody$btnSubmit", "", true, "", "", false, true))' style="color:White;">Submit</a>--%>
                                    </div>

                                </div>
                                <div class="pull-left" style="display: none;">
                                    <p>
                                        <b>
                                            <span id="cphBody_lblActionText" style="color: Red;">LOGIN </span>
                                        </b>
                                        <span id="cphBody_lblActionDescription1">to</span>
                                        <b>
                                            <span id="cphBody_lblActionDescription" style="color: #26cae2;">PREDICT, SAVE & SHARE</span>
                                        </b>

                                    </p>
                                </div>
                                <div class="col-md-4" style="float: right; display: none;">
                                    <input type="submit" name="ctl00$cphBody$btnLogin" value="Login" id="cphBody_btnLogin" class="btn btn-warning btn-send" />
                                    <input type="submit" name="ctl00$cphBody$btnSubmit" value="Save" id="cphBody_btnSubmit" disabled="disabled" class="aspNetDisabled btn btn-warning btn-send" />
                                    <br />
                                    <br />
                                </div>
                            </div>

                        </div>
                    </div>
                    <h1 id="listss"></h1>
                </div>
                <div class="row">
                    <div class="col-md-12 padding20">
                        <div class="table-responsive no-more-tables">
                            <asp:GridView ID="gvlist" runat="server" AutoGenerateColumns="false" CssClass="table table-striped  custab datatab box-shadow--6dp " OnRowDataBound="gvlist_RowDataBound">
                                <Columns>
                                    <asp:TemplateField HeaderText="Number">
                                        <ItemTemplate>
                                            <asp:Label ID="lblconsistname" runat="server" Text='<%#Eval("T_P_ID") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" />
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText=" Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblconsistnum" runat="server" Text='<%#Eval("PARLIAMENT_NAME") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" />
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="TRS">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltrs" runat="server" Text='<%#Eval("TRS") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" />
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="INC">
                                        <ItemTemplate>
                                            <asp:Label ID="lblINC" runat="server" Text='<%#Eval("INC") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" />
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="BJP">
                                        <ItemTemplate>
                                            <asp:Label ID="lblBJP" runat="server" Text='<%#Eval("BJP") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" />
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="OTHERS">
                                        <ItemTemplate>
                                            <asp:Label ID="lblOTHERS" runat="server" Text='<%#Eval("OTHERS") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" />
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:TemplateField>


                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>


            </div>
        </section>

    </div>

    <!-- Popup here  -->

    <div id="myModal" class="modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <label>Enter Email to share your predictions</label>
                            <asp:TextBox ID="txtemmb" runat="server" placeholder=" " class="floating-input totalCount"></asp:TextBox>
                            <label id="lblstcode" class="urlcss">Share link</label>
                            <asp:TextBox ID="txturl" runat="server" placeholder="" class="readonly floating-input totalCount urlcss"></asp:TextBox>
                        </div>
                        <div class="col-md-12" style="padding-top: 10px">
                            <input type="button" class="btn btn-primary pull-right" id="btnpopup" value="Save & Share" />
                        </div>
                    </div>
                    <div class="row urlcss">
                        <div class="col-md-12">



                            <a class="btnz share pinterest" id="whatsup" style="margin-right: 15px;" target="_blank"><i class="fa fa-whatsapp"></i><span>Share</span></a>
                            <iframe class="btn" title="facebook share" id="fshareurl" src="https://www.facebook.com/plugins/share_button.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&layout=button&size=large&appId=1553498291449422&width=100%&height=100%" width="73" height="28" style="margin-left: 14px; border: none; overflow: hidden; font-size: larger" scrolling="no" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                            <a class="btnz share facebook" style="float: right; cursor: pointer" onclick="myFunction()"><i class="fa fa-clipboard"></i><span style="padding-left: 6px;">Copy Url</span></a>


                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" runat="Server">
    <script>
        var http = "/services/apelection.asmx/";
        var useremails = [];
        var trsl, incl, bjpl, othersl;
        $(document).ready(function () {
            Changecoloronclick();
            getallemails();
            CountofHigh();
        });
        function Changecoloronclick() {
            $('#cphBody_gvlist td:nth-child(3)').click(function () {

                var inc = $(this).closest('tr').children('td:eq( 3 )');
                var bjp = $(this).closest('tr').children('td:eq( 4 )');
                var others = $(this).closest('tr').children('td:eq( 5 )');
                // if (ss != "") {
                if (inc.hasClass('inc') || bjp.hasClass('bjp') || others.hasClass('others')) {
                    inc.removeClass('inc');
                    others.removeClass('others');
                    bjp.removeClass('bjp');
                    $(this).addClass('trs');
                    CountofHigh();

                }
                else {
                    $(this).addClass('trs');
                    CountofHigh();

                }
            });
            $('#cphBody_gvlist td:nth-child(4)').click(function () {

                var others = $(this).closest('tr').children('td:eq( 5 )');
                var bjp = $(this).closest('tr').children('td:eq( 4 )');
                var trs = $(this).closest('tr').children('td:eq( 2 )');


                //if (ss != "") {
                if (others.hasClass('others') || trs.hasClass('trs') || bjp.hasClass('bjp')) {
                    others.removeClass('others');
                    trs.removeClass('trs');
                    bjp.removeClass('bjp');
                    $(this).addClass('inc');

                    CountofHigh();
                }
                else {
                    $(this).addClass('inc');
                    CountofHigh();
                }
            });
            $('#cphBody_gvlist td:nth-child(5)').click(function () {

                var trs = $(this).closest('tr').children('td:eq( 2 )');
                var inc = $(this).closest('tr').children('td:eq( 3 )');
                var others = $(this).closest('tr').children('td:eq( 5 )');
                //if (ss != "") {
                if (trs.hasClass('trs') || inc.hasClass('inc') || others.hasClass('others')) {
                    trs.removeClass('trs');
                    inc.removeClass('inc');
                    others.removeClass('others');
                    $(this).addClass('bjp');
                    CountofHigh();
                }
                else {
                    $(this).addClass('bjp');
                    CountofHigh();
                }

            });
            $('#cphBody_gvlist td:nth-child(6)').click(function () {
                var ns = $(this).text();
                var trs = $(this).closest('tr').children('td:eq( 2 )');
                var inc = $(this).closest('tr').children('td:eq( 3 )');
                var bjp = $(this).closest('tr').children('td:eq( 4 )');
                // if (ss != "") {
                if (trs.hasClass('trs') || bjp.hasClass('bjp') || inc.hasClass('inc')) {
                    trs.removeClass('trs');
                    bjp.removeClass('bjp');
                    inc.removeClass('inc');

                    $(this).addClass('others');
                    CountofHigh();
                }
                else {
                    $(this).addClass('others');
                    CountofHigh();
                }


            });
        }


        function CountofHigh() {
            var cnt = [];
            cnt[0] = $(".trs").length;
            cnt[1] = $(".inc").length;
            cnt[2] = $(".bjp").length;
            cnt[3] = $(".others").length;
            $("#cphBody_lbltrs").html(cnt[0]);
            $("#cphBody_lblinc").html(cnt[1]);
            $("#cphBody_lblbjp").html(cnt[2]);
            $("#cphBody_lblothers").html(cnt[3]);
        }

        function getallemails() {
            $.ajax({
                url: http + 'telanganauserPredicts',
                method: 'GET',
                dataType: 'json',
                success: function (data) {
                    $.each(data, function (idx, elem) {
                        useremails.push(elem.Uemail)
                    });
                }
            });
        }

        function mail(sub, shlink, to) {
            var entities = {};
            entities.Subject = sub;
            entities.Sharelink = shlink;
            entities.Tomail = to;
            $.ajax({
                type: "POST",
                url: "/services/apelection.asmx/Mailmethod",
                data: '{mail: ' + JSON.stringify(entities) + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
            });
        }

        $("#btnpopup").click(function () {
            var trs = $('#cphBody_gvlist td:nth-child(3).trs');
            var inc = $('#cphBody_gvlist td:nth-child(4).inc');
            var bjp = $('#cphBody_gvlist td:nth-child(5).bjp');
            var others = $('#cphBody_gvlist td:nth-child(6).others');
            var email = $("#cphBody_txtemmb").val();
            var ec = 0;
            trsl = trs.map(function () {
                return this.innerText;
            }).get().join(',');

            incl = inc.map(function () {
                return this.innerText;
            }).get().join(',');

            bjpl = bjp.map(function () {
                return this.innerText;
            }).get().join(',');

            othersl = others.map(function () {
                return this.innerText;
            }).get().join(',');

            var randomNumber = randomNumberFromRange(000000, 999999);
            function randomNumberFromRange(min, max) {
                return Math.floor(Math.random() * (max - min + 1) + min);
            }

            var userp = {};
            userp.Uemail = email;
            userp.Shortcode = randomNumber;
            userp.Userpredicts = trsl + "," + incl + "," + bjpl + "," + othersl;

            $.ajax({
                type: "POST",
                url: http + "savetelaanganaparliment",
                data: '{parliment: ' + JSON.stringify(userp) + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    getallemails();
                    $('.urlcss').add('#fshareurl').slideDown();
                    $("#btnpopup").slideUp();
                    $("#cphBody_txturl").show().val("http://ap.electionmonk.com/telangana_parliment.aspx" + "?" + "scode=" + randomNumber);
                    mail("Your prediction at ElectionMonk", "http://ap.electionmonk.com/telangana_parliment.aspx" + "?" + "scode=" + randomNumber, $("#cphBody_txtemmb").val());
                    $('#fshareurl').show().removeAttr("src");
                    $('#fshareurl').attr('src', "https://www.facebook.com/plugins/share_button.php?href=" + $('#cphBody_txturl').val());
                    $("#whatsup").attr("href", 'https://wa.me/?text=http://ap.electionmonk.com/telangana_parliment.aspx?scode=' + msg.d);
                },
                error: function (err) {
                    alert(err);
                }
            });

        });
        $("#cphBody_txtemmb").keyup(function () {
            var email = $(this).val();
            if (IsEmail(email) == true)
                $("#btnpopup").attr("disabled", false);
            else
                $("#btnpopup").attr("disabled", true);
        });

        $('#btnpred').click(function () {
            $("#btnpopup").show().attr("disabled", true);
            $("#cphBody_txtemmb").val('').focus();
            $('.urlcss').add('#fshareurl').hide();
        });

        function myFunction() {
            var copyText = document.getElementById("cphBody_txturl");
            copyText.select();
            document.execCommand('copy');
        }

        function IsEmail(email) {
            var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (!regex.test(email)) {
                return false;
            } else {
                return true;
            }
        }

        // ===== Scroll to Top ==== 
        $(window).scroll(function () {
            if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
                $('#return-to-top').fadeIn(200);    // Fade in the arrow
            } else {
                $('#return-to-top').fadeOut(200);   // Else fade out the arrow
            }
        });
        $('#return-to-top').click(function () {      // When arrow is clicked
            $('body,html').animate({
                scrollTop: 0                       // Scroll to top of body
            }, 500);
        });

    </script>
</asp:Content>

