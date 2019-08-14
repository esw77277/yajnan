<%@ Page Title="" Language="C#" MasterPageFile="~/emonk.master" AutoEventWireup="true" CodeFile="ap_parliment.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
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

        .inc {
            background-color: #008000;
            color: white !important;
        }

        .others {
            background-color: aqua;
            color: white !important;
        }

        .janasena {
            background-color: #d40000;
            color: white !important;
        }

        .tdp {
            background-color: #ffff00;
            color: black !important;
        }

        .ysrcp {
            background-color: #4b8aef;
            color: white !important;
        }

        .bjp {
            background-color: #FF6600;
            color: white !important;
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
                <div class="row" style="padding: 20px">
                    <div class="col-md-5">
                        <h1 style="text-align: left">Andhra Pradesh</h1>
                        <div id="ap-map">
                            <svg width="75%" height="50%" version="1.1" viewBox="0 0 140.41731 132.28949">

                                <g transform="translate(-32.600905,-79.664762)" fill="#916f6f" stroke-width=".61885589">

                                    <a id="txt" xlink:title="Andhra Pradesh">
                                        <path fill="#F9D0CF" stroke-width=".61885589" d="m59.159844 211.66727c-0.425461-0.17165-0.77357-0.98514-0.77357-1.80768 0-1.24919 0.305871-1.49559 1.85657-1.49559 1.581518 0 1.856566-0.23573 1.856566-1.59134 0-0.87523 0.417726-2.00907 0.928285-2.5196 0.510555-0.51058 0.928282-1.86462 0.928282-3.009 0-1.8098-0.221567-2.10616-1.701852-2.27649-1.477519-0.17001-1.727172-0.50174-1.893925-2.51653-0.153009-1.84874-0.445192-2.32071-1.436631-2.32071-1.727007 0-3.012717-1.45842-3.012717-3.41744 0-1.12881-0.390583-1.7514-1.237711-1.97294-0.680743-0.17803-1.237714-0.56967-1.237714-0.87036 0-0.30065-0.974697-0.54667-2.165996-0.54667-1.489635 0-2.165996 0.28306-2.165996 0.90653 0 1.15015-1.9118 2.18776-4.031049 2.18776-1.497027 0-1.602121-0.15879-1.229112-1.85709 0.299152-1.36204 0.157707-1.95309-0.530607-2.21719-1.262472-0.48447-0.563968-2.11428 0.906134-2.11428 1.519343 0 1.473631-0.54344-0.223998-2.66283-1.258599-1.5713-1.636875-1.69489-4.019491-1.31334-1.446575 0.23165-2.630137 0.6641-2.630137 0.96096 0 0.29687-0.587963 0.53979-1.306583 0.53979-1.158067 0-1.260396-0.24621-0.900242-2.16601 0.309721-1.65097 0.196964-2.166-0.474206-2.166-1.971539 0-2.534618-1.73427-1.669976-5.14352 0.886201-3.49422 1.589061-4.29662 3.297706-3.76464 0.611985 0.19056 1.517059 0.0106 2.011284-0.39932 1.181403-0.98049 1.161192-5.17556-0.0297-6.1639-1.064323-0.88332-1.267354-4.33199-0.255031-4.33199 0.442592 0 0.529967-0.84809 0.255031-2.47544-0.311955-1.84643-0.207843-2.49615 0.409746-2.55706 0.765768-0.0755 7.673951-0.40516 9.801373-0.46775 0.510559-0.0149 2.599196 0.11205 4.641421 0.28241 5.189574 0.43285 7.735698-0.0996 7.735698-1.61763 0-1.34484 1.437377-1.57964 7.42627-1.21311 2.819665 0.17257 4.015505-0.36721 4.229679-1.90914 0.296027-2.13124 1.010318-2.63581 2.454524-1.73388 1.665727 1.04024 2.781216 0.11675 3.745192-3.10073 0.64484-2.15227 0.99852-2.47561 3.09576-2.82993 1.30226-0.22001 3.11919-0.78988 4.03761-1.26635 1.27905-0.66358 2.02039-0.70662 3.1676-0.18394 1.19489 0.54445 1.82456 0.46827 3.11396-0.37656 1.32923-0.87095 1.58211-1.45465 1.42422-3.28734-0.26359-3.05945 0.86224-3.21434 3.836-0.52774 3.535629 3.19425 6.180249 2.80525 4.871139-0.71649-0.31929-0.85894-1.05869-1.41116-1.92996-1.44129-0.931679-0.0322-1.096429-0.1684-0.484079-0.40017 0.510559-0.19322 1.140719-0.70985 1.400339-1.14804 0.38107-0.64317 0.79859-0.62638 2.16601 0.0869 2.47778 1.29256 4.47879 1.15407 4.47879-0.30998 0-0.91179 0.61005-1.32195 2.53116-1.70188 1.39213-0.2753 2.48729-0.7482 2.43367-1.0509-0.0536-0.30267 0.82638-0.95426 1.95554-1.44796 3.53798-1.54686 3.90465-1.81691 4.09902-3.01886 0.36138-2.23469 1.51169-4.5751 2.24866-4.5751 0.40743 0 1.8357-0.97448 3.17393-2.16551 2.58343-2.29929 3.86402-2.6465 5.13724-1.39292 0.63043 0.62072 1.07336 0.44155 2.24149-0.90665 1.15055-1.32792 1.41666-2.26082 1.26913-4.44909-0.13708-2.03332 0.0637-2.86489 0.75572-3.13047 1.17493-0.45083 1.54906-0.0909 1.74539 1.6791 0.0849 0.76566 0.17762 1.601 0.20598 1.85629 0.10289 0.92629 1.6475 0.43064 3.22968-1.03646 1.057-0.98012 1.82869-1.29019 2.22487-0.89404 0.3336 0.33362 1.31891 0.42778 2.18958 0.20927 1.88182-0.47232 2.76847-3.01068 1.56221-4.47247-0.63407-0.76839-0.63961-1.02377-0.0266-1.23007 0.4255-0.1432 0.7736-0.65489 0.7736-1.13708 0-0.50604 0.61089-0.87673 1.44484-0.87673 0.79467 0 2.16964-0.765824 3.05552-1.701841 0.88587-0.936018 2.04105-2.056468 2.56708-2.489881 1.41961-1.169673 3.97545-0.265414 5.03365 1.780894 0.59508 1.150751 1.40463 1.775988 2.29911 1.775708 0.75935-2.5e-4 2.45533 0.17657 3.76884 0.39291 2.00875 0.33089 2.6038 0.16013 3.74501-1.074607 0.74623-0.807434 1.54257-1.955389 1.76963-2.551037 0.22708-0.595624 0.97856-1.082971 1.66999-1.082971 0.69142 0 1.25713-0.294941 1.25713-0.655383 0-0.360466 0.28975-0.476318 0.6439-0.257427 0.38338 0.23692-0.18429 1.315827-1.40308 2.666632-1.12584 1.2478-2.64954 3.243433-3.386 4.434733-0.73647 1.1913-2.19372 2.66909-3.23834 3.28398-1.04463 0.61488-1.90122 1.58959-1.90354 2.16597-4e-3 0.98264-0.86818 1.66363-7.11262 5.60459-3.103 1.95837-7.11685 5.68103-7.11685 6.60056 0 1.20366-2.64605 3.16831-6.6527 4.93947-2.12731 0.9404-3.86784 1.91635-3.86784 2.16881 0 0.25242-1.53931 1.51913-3.42066 2.81487-2.22715 1.53391-3.53577 2.90974-3.75053 3.9432-0.18141 0.87303-0.62457 2.12385-0.9848 2.7796-0.49783 0.90622-0.43681 1.3518 0.25425 1.85712 1.50797 1.10264 0.36879 2.63279-3.45522 4.64107-3.57451 1.87726-5.35215 2.35175-5.35215 1.42865 0-0.26022-1.60421-0.55263-3.56493-0.64982l-3.56493-0.17665-1.72296 3.58938c-0.94762 1.97415-2.33796 4.29076-3.08961 5.14803-1.52341 1.73739-4.14782 2.29314-4.14782 0.87831 0-1.02347-3.0978-1.22729-4.80454-0.31616-0.59103 0.31554-1.554239 0.72158-2.140489 0.90231-0.99717 0.30742-2.02578 1.92322-4.57588 7.188-1.54188 3.18326-1.80338 8.04188-0.6198 11.51552 1.5318 4.49557 1.11021 8.19328-1.10262 9.67081-0.48187 0.32176-0.46762 0.45746 0.0488 0.46414 0.74636 9e-3 1.71943 4.08085 2.29497 9.60175l0.32258 3.09429-1.0087-2.93957c-1.28675-3.74983-2.32048-3.83793-1.81564-0.15472 0.35378 2.58112 0.28069 2.78537-0.99888 2.79196-0.98095 5e-3 -1.7015 0.67682-2.48918 2.32071-1.39575 2.91286-3.26445 3.88643-5.38939 2.80777-0.85093-0.43194-2.31298-0.78944-3.249-0.79446-1.31178-7e-3 -1.70185 0.28471-1.70185 1.2728 0 1.35903-1.466414 3.23391-2.062855 2.63749-0.194496-0.1945-0.804511 0.0973-1.355588 0.64832-1.149613 1.1496-1.913463 1.26852-2.460689 0.3831-0.48936-0.7918-4.699771-0.80131-6.767128-0.0153-1.208534 0.45949-1.58743 1.03901-1.58743 2.42795 0 1.05986-0.671414 2.62235-1.602149 3.72845-1.634627 1.94264-1.84209 2.03972-3.193984 1.49419z" />
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
                                            <ul id="lust"></ul>

                                            <div class="row">
                                                <div class="col-md-12">


                                                    <div class="col-md-4">
                                                        <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                            <div class="panel-heading" style="background-color: #ffff00">
                                                                <h1 class="panel-title text-center" style="color: green">TDP</h1>
                                                            </div>
                                                            <div class="panel-body text-center">
                                                                <strong style="font-size: 33px; color: #ffff00">
                                                                    <asp:Label ID="lbltdp" runat="server" Text="0"></asp:Label></strong>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                            <div class="panel-heading" style="background-color: #002eff">
                                                                <h1 class="panel-title text-center" style="color: white">YSRCP</h1>
                                                            </div>
                                                            <div class="panel-body text-center">
                                                                <strong style="font-size: 33px; color: #002eff">
                                                                    <asp:Label ID="lblysr" runat="server" Text="0"></asp:Label></strong>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                            <div class="panel-heading" style="background-color: #dc1908">
                                                                <h1 class="panel-title text-center" style="color: white">JANASENA</h1>
                                                            </div>
                                                            <div class="panel-body text-center">
                                                                <strong style="font-size: 33px; color: #dc1908">
                                                                    <asp:Label ID="lbljanasena" runat="server" Text="0"></asp:Label></strong>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4" style="display:none">
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
                                                    <div class="col-md-4">
                                                        <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                            <div class="panel-heading" style="background-color: #3B8006">
                                                                <h1 class="panel-title text-center" style="color: white">INC</h1>
                                                            </div>
                                                            <div class="panel-body text-center">
                                                                <strong style="font-size: 33px; color: #3B8006">
                                                                    <asp:Label ID="Label1" runat="server" Text="0"></asp:Label></strong>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                            <div class="panel-heading" style="background-color: #7DFBFB">
                                                                <h1 class="panel-title text-center" style="color: green">Others</h1>
                                                            </div>
                                                            <div class="panel-body text-center">
                                                                <strong style="font-size: 33px; color: #7DFBFB">
                                                                    <asp:Label ID="Label2" runat="server" Text="0"></asp:Label></strong>
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
                                                <h3>Your Prediction (Total Seats : 175) </h3>


                                                <hr>
                                                <div class="row">

                                                    <div class="col-md-2">
                                                        <div class="floatings-labels">
                                                            <asp:TextBox ID="txtjana" runat="server" placeholder=" " class="floating-input totalCount"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ValidationGroup="one" ForeColor="Orange" ControlToValidate="txtjana"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Orange" ErrorMessage="Enter numbers only" ControlToValidate="txtjana" ValidationGroup="one"
                                                                ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                                            <span class="form-bar"></span>
                                                            <label for="fromDateID" class="lbltop" id="colortrs">JANASENA </label>
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
                                                            <label for="fromDateID" class="lbltop" id="colorkutai">TDP </label>
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
                                                            <label for="fromDateID" class="lbltop" id="colorbjp">YSRCP </label>
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
                                                            <label for="fromDateID" class="lbltop" id="colorothe">BJP </label>
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
                    <br />

                    <button id="btnpred" type="button" class="btn btn-info btn-lg pull-right" style="padding-bottom: 10px" data-toggle="modal" data-target="#myModal">Predict</button>
                    <div class="row">

                        <div class="col-md-12 padding20">
                            <div class="table-responsive no-more-tables">
                                <asp:GridView ID="gvlistparli" runat="server" AutoGenerateColumns="false" CssClass="table table-striped  custab datatab box-shadow--6dp " OnRowDataBound="gvlist_RowDataBound">
                                    <Columns>
                                        <asp:TemplateField HeaderText="SNO">
                                            <ItemTemplate>
                                                <asp:Label ID="lblconsistname" runat="server" Text='<%#Eval("AP_P_ID") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" />
                                            <HeaderStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblconsistnum" runat="server" Text='<%#Eval("PARLIAMENT_NAME") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" />
                                            <HeaderStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>
                                        <%----%>
                                        <asp:TemplateField HeaderText="TDP">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltdp" runat="server" Text='<%#Eval("TDP") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" />
                                            <HeaderStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="YSRCP">
                                            <ItemTemplate>
                                                <asp:Label ID="lblysrcp" runat="server" Text='<%#Eval("YSRCP") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" />
                                            <HeaderStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="JANASENA">
                                            <ItemTemplate>
                                                <asp:Label ID="lbljanasena" runat="server" Text='<%#Eval("JANASENA") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" />
                                            <HeaderStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>
                                        

                                        <asp:TemplateField HeaderText="INC">
                                            <ItemTemplate>
                                                <asp:Label ID="lblinc" runat="server" Text='<%#Eval("INC") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" />
                                            <HeaderStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="OTHERS">
                                            <ItemTemplate>
                                                <asp:Label ID="lblothers" runat="server" Text='<%#Eval("OTHERS") %>'></asp:Label>
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

            </div>
        </section>
        <!-- Return to Top -->
        <a href="javascript:" id="return-to-top"><i class="icon-chevron-up"></i></a>
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

                        <%--    <a class="btnz share facebook" style="cursor: pointer" onclick="myFunction()"><i class="fa fa-clipboard"></i><span style="padding-left: 6px;">Copy Url</span></a>

                            <!-- FB & WA Share Button -->
                            <a class="btnz share pinterest" id="whatsup" style="margin-left: 20px;" target="_blank"><i class="fa fa-whatsapp"></i><span style="padding-left: 6px;">Share</span></a>
                            <iframe class="btn btn-success" title="facebook share" id="fshareurl" src="https://www.facebook.com/plugins/share_button.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&layout=button&size=large&appId=1553498291449422&width=100%&height=100%" width="73" height="28" style="margin-left: 14px; border: none; overflow: hidden; font-size: larger" scrolling="no" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>--%>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" runat="Server">
    <%-- color list --%>
    <script>
        var http = "/services/apelection.asmx/";
        var useremails = [];
        var lk = $("#lust");
        function getallemails() {
            $.ajax({
                url: http + 'apuserPredicts',
                method: 'GET',
                dataType: 'json',
                success: function (data) {
                    $.each(data, function (idx, elem) {
                        useremails.push(elem.Uemail)
                    });
                }
            });
        }
        $(document).ready(function () {
            getallemails();
            Changecoloronclick();
            CountofHigh();
        });


        function Changecoloronclick() {
            $('#cphBody_gvlistparli td:nth-child(3)').click(function () {

                var janasena = $(this).closest('tr').children('td:eq( 4 )');
                var ysr = $(this).closest('tr').children('td:eq( 3 )');
              
                var inc = $(this).closest('tr').children('td:eq( 5 )');
                var others = $(this).closest('tr').children('td:eq( 6 )');
                
                if (janasena.hasClass('janasena') || ysr.hasClass('ysrcp') || inc.hasClass('inc') || others.hasClass('others')) {
                    janasena.removeClass('janasena');
                    ysr.removeClass('ysrcp');
                   
                    inc.removeClass('inc');
                    others.removeClass('others');
                    $(this).addClass('tdp');
                    CountofHigh();

                }
                else {
                    $(this).addClass('tdp');
                    CountofHigh();

                }
            });
            $('#cphBody_gvlistparli td:nth-child(4)').click(function () {

                var janasena = $(this).closest('tr').children('td:eq( 4 )');
                var tdp = $(this).closest('tr').children('td:eq( 2 )');
                
                var inc = $(this).closest('tr').children('td:eq( 5 )');
                var others = $(this).closest('tr').children('td:eq( 6 )');
                if (janasena.hasClass('janasena') || tdp.hasClass('tdp')  || inc.hasClass('inc') || others.hasClass('others')) {
                    janasena.removeClass('janasena');
                    tdp.removeClass('tdp');
                    
                    inc.removeClass('inc');
                    others.removeClass('others');
                    $(this).addClass('ysrcp');

                    CountofHigh();
                }
                else {
                    $(this).addClass('ysrcp');
                    CountofHigh();
                }
            });
            $('#cphBody_gvlistparli td:nth-child(5)').click(function () {

                var ysr = $(this).closest('tr').children('td:eq( 3 )');
                var tdp = $(this).closest('tr').children('td:eq( 2 )');
               // var bjp = $(this).closest('tr').children('td:eq( 5 )');
                var inc = $(this).closest('tr').children('td:eq( 5 )');
                var others = $(this).closest('tr').children('td:eq( 6 )');
                if (ysr.hasClass('ysrcp') || tdp.hasClass('tdp') || inc.hasClass('inc') || others.hasClass('others')) {
                    tdp.removeClass('tdp');
                    ysr.removeClass('ysrcp');
                    
                    inc.removeClass('inc');
                    others.removeClass('others');
                    $(this).addClass('janasena');
                    CountofHigh();
                }
                else {
                    $(this).addClass('janasena');
                    CountofHigh();
                }

            });
            
            $('#cphBody_gvlistparli td:nth-child(6)').click(function () {
                var ns = $(this).text();
                var janasena = $(this).closest('tr').children('td:eq( 4 )');
                var tdp = $(this).closest('tr').children('td:eq( 2 )');
                var ysr = $(this).closest('tr').children('td:eq( 3 )');
                
                var others = $(this).closest('tr').children('td:eq( 6 )');

                if (janasena.hasClass('janasena') || tdp.hasClass('tdp') || ysr.hasClass('ysrcp') || others.hasClass('others')) {
                    janasena.removeClass('janasena');
                    tdp.removeClass('tdp');
                    ysr.removeClass('ysrcp');
                    
                    others.removeClass('others');
                    $(this).addClass('inc');
                    CountofHigh();
                }
                else {
                    $(this).addClass('inc');
                    CountofHigh();
                }

            });
            $('#cphBody_gvlistparli td:nth-child(7)').click(function () {
                var ns = $(this).text();
                var janasena = $(this).closest('tr').children('td:eq( 4 )');
                var tdp = $(this).closest('tr').children('td:eq( 2 )');
                var ysr = $(this).closest('tr').children('td:eq( 3 )');
                var inc = $(this).closest('tr').children('td:eq( 5 )');
                

                if (janasena.hasClass('janasena') || tdp.hasClass('tdp') || ysr.hasClass('ysrcp') || inc.hasClass('inc')) {
                    janasena.removeClass('janasena');
                    tdp.removeClass('tdp');
                    ysr.removeClass('ysrcp');
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

        function alerttime() {
            timer = setTimeout(function () {
                $('#alertt').hide(500);
            }, 4000);
        }

        function CountofHigh() {
            var cnt = [];
            cnt[0] = $(".tdp").length;
            cnt[1] = $(".ysrcp").length;
            cnt[2] = $(".janasena").length;
            
            cnt[3] = $(".inc").length;
            cnt[4] = $(".others").length;
            $("#cphBody_lbltdp").html(cnt[0]);
            $("#cphBody_lblysr").html(cnt[1]);
            $("#cphBody_lbljanasena").html(cnt[2]);
           
            $("#cphBody_Label1").html(cnt[3]);
            $("#cphBody_Label2").html(cnt[4]);
        }

        var seconds = 3;
        setTimeout(function () {
            document.getElementById("#alertt").style.display = "none";
        }, seconds * 1000);

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
            var uem = $("#cphBody_txtemmb").val();
            var ecount = 0;
            var jc = $('#cphBody_gvlistparli td:nth-child(5).janasena');
            var tdp = $('#cphBody_gvlistparli td:nth-child(3).tdp');
            var ysr = $('#cphBody_gvlistparli td:nth-child(4).ysrcp');
            
            var inc = $('#cphBody_gvlistparli td:nth-child(6).inc');
            var others = $('#cphBody_gvlistparli td:nth-child(7).others');

            var jcl = jc.map(function () {
                return this.innerText;
            }).get().join(',');
            var tdpl = tdp.map(function () {
                return this.innerText;
            }).get().join(',');
            var ysrl = ysr.map(function () {
                return this.innerText;
            }).get().join(',');
            
            var incl = inc.map(function () {
                return this.innerText;
            }).get().join(',');
            var othersl = others.map(function () {
                return this.innerText;
            }).get().join(',');

            var randomNumber = randomNumberFromRange(000000, 999999);
            function randomNumberFromRange(min, max) {
                return Math.floor(Math.random() * (max - min + 1) + min);
            }

            var userp = {};
            userp.Uemail = uem;
            userp.Shortcode = randomNumber;
            userp.Userpredicts = jcl + "," + tdpl + "," + ysrl +  "," + incl + "," + othersl;

            $.ajax({
                type: "POST",
                url: http + "saveapparliment",
                data: '{parliment: ' + JSON.stringify(userp) + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    $('.urlcss').add('#fshareurl').slideDown();
                    $("#btnpopup").slideUp();
                    $("#cphBody_txturl").show().val("http://ap.electionmonk.com/ap_parliment.aspx" + "?" + "scode=" + randomNumber);
                    mail("Your prediction at ElectionMonk", "http://ap.electionmonk.com/ap_parliment.aspx" + "?" + "scode=" + randomNumber, $("#cphBody_txtemmb").val());
                    $('#fshareurl').show().removeAttr("src");
                    $('#fshareurl').attr('src', "https://www.facebook.com/plugins/share_button.php?href=" + $('#cphBody_txturl').val());
                    $("#whatsup").attr("href", 'https://wa.me/?text=http://ap.electionmonk.com/ap_parliment.aspx?scode=' + msg.d);
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

