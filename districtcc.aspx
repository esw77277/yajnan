<%@ Page Title="" Language="C#" MasterPageFile="~/emonk.master" AutoEventWireup="true" CodeFile="districtcc.aspx.cs" Inherits="districtcc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <meta property="fb:app_id" content="1553498291449422" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="http://ap.electionmonk.com" />
    <meta property="og:title" content="Election Monk - View, Forecast and Share" />
    <meta property="og:description" content="Become a pollster. Predict your leader. A simple visual tool to forecast your own election results" />
    <meta property="og:image" content="http://ap.electionmonk.com/img/logo/emonk.jpg" />
    <link href="style/card.css" rel="stylesheet" />
    <!-- ICON NEEDS FONT AWESOME FOR CHEVRON UP ICON -->
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <style>
        .pointer {
            cursor: pointer !important;
        }


        .h {
            padding: 5px 25px;
            font-size: 15px;
            text-align: center;
            cursor: pointer;
            outline: none;
            color: #002eff;
        }

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

        h3 {
            font-size: 30px;
            font-weight: 400;
            text-align: center;
            margin-top: 50px;
        }

            h3 i {
                color: #444;
            }

        .readonly {
            pointer-events: none;
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


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container-fluid">
        <section>

            <div class="row">
                <div class="col-md-12">

                    <h1 style="text-align: left" runat="server" id="txtmodule"></h1>

                </div>
            </div>

            <div class="row" id="divdistricts">
                <h1 style="margin-left:5%"><%=d_h %></h1>
                <div class="col-md-5">
                    <div align="center"><%=strBind %></div>
                </div>
                <div class="col-md-7">
                    <div class="row">
                        <div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-5 hidden-xs">
                            <div class="card kl-card kl-xl kl-reveal kl-fade  kl-show kl-slide-in">
                                <div class="kl-card-block kl-md bg-primary kl-shadow-br ">
                                    <div class="kl-card-overlay kl-card-overlay-split-v kl-dark kl-inverse">
                                        <div class="kl-card-overlay-item" style="background-color: #dc1908">
                                            <div class="kl-figure-block">
                                                <span class="kl-figure kl-txt-shadow">Total</span>
                                                <span class="kl-title">Constituencies</span>
                                            </div>
                                        </div>
                                        <div class="kl-card-overlay-item">
                                            <div class="kl-figure-block">
                                                <span class="kl-figure" id="totalconsist" runat="server">0</span>
                                                <span class="kl-title"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- card end -->
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-5 hidden-xs">
                            <div class="card kl-card kl-xl kl-reveal kl-fade  kl-show kl-slide-in">
                                <div class="kl-card-block kl-md bg-primary kl-shadow-br ">
                                    <div class="kl-card-overlay kl-card-overlay-split-v kl-dark kl-inverse">
                                        <div class="kl-card-overlay-item" style="background-color: #dc1908">
                                            <div class="kl-figure-block">
                                                <span class="kl-figure kl-txt-shadow">Head</span>
                                                <span class="kl-title">Quarter</span>
                                            </div>
                                        </div>
                                        <div class="kl-card-overlay-item">
                                            <div class="kl-figure-block">
                                                <span class="kl-figure" id="txtheadquarter" runat="server">NA</span>
                                                <span class="kl-title"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- card end -->
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 mb-5 hidden-xs">

                            <div class="card kl-card kl-xl kl-reveal kl-fade  kl-show kl-slide-in">
                                <div class="kl-card-block kl-md bg-primary kl-shadow-br ">
                                    <div class="kl-card-overlay kl-card-overlay-split-v kl-dark kl-inverse">
                                        <div class="kl-card-overlay-item" style="background-color: #dc1908">
                                            <div class="kl-figure-block">
                                                <span class="kl-figure kl-txt-shadow">Total</span>
                                                <span class="kl-title">Population</span>
                                            </div>
                                        </div>
                                        <div class="kl-card-overlay-item">
                                            <div class="kl-figure-block">
                                                <span class="kl-figure" id="txtpopulation" runat="server">NA</span>
                                                <span class="kl-title"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- card end -->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box sl1 fadesimple mtb-12">
                                <h3 id="txtprdcsts" runat="server">Prediction</h3>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">

                                            <div class="col-md-4 col-xs-12">
                                                <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                    <div class="panel-heading" style="background-color: #ffff00">
                                                        <h1 class="panel-title text-center" style="color: green">TDP</h1>
                                                    </div>
                                                    <div class="panel-body text-center">
                                                        <strong style="font-size: 33px; color:  #e6e600">
                                                            <span id="ptdp">0</span></strong>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-xs-12">
                                                <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                    <div class="panel-heading" style="background-color: #002eff">
                                                        <h1 class="panel-title text-center" style="color: white">YSRCP</h1>
                                                    </div>
                                                    <div class="panel-body text-center">
                                                        <strong style="font-size: 33px; color: #002eff">
                                                            <span id="pysrcp">0</span></strong>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-xs-12">
                                                <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                    <div class="panel-heading" style="background-color: #dc1908">
                                                        <h1 class="panel-title text-center" style="color: white">JANASENA</h1>
                                                    </div>
                                                    <div class="panel-body text-center">
                                                        <strong style="font-size: 33px; color: #dc1908">
                                                            <span id="pjanasena">0</span></strong>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-xs-6" style="display: none">
                                                <div class="panel status panel-danger" style="box-shadow: 5px 10px #f4f6f9;">
                                                    <div class="panel-heading" style="background-color: #FF6600">
                                                        <h1 class="panel-title text-center" style="color: white">BJP</h1>
                                                    </div>
                                                    <div class="panel-body text-center">
                                                        <strong style="font-size: 33px; color: #FF6600">
                                                            <span id="pbjp">0</span></strong>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <a class="h pull-right" id="predFieldsGet"><b>Click here to Give your Prediction</b><i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                            <%--<h4 class="pull-right" id="predFieldsGet">Click here to Give your Prediction</h4>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" id="predFieldsSet" style="display: none">
                <div class="col-md-12">
                    <h3 style="text-align: center;color:#ff0000">List of constituencies</h3>
                    <p><span style="color:orangered">*</span>You can change your winners from the below grid and then click on Submit button</p>
                    <div id="cphBody_divPredictionData" style="padding: 50px" class="table-responsive no-more-tables">
                        
                        <input type="button" value="Submit" id="btnsave" style="border-color: #4cae4c !important; float: right; margin-top: -40px;"
                            class="btn btn-success" data-toggle="modal" data-target="#myModal" />

                        <!--alert code-->
                        <div class="container a" style="padding-right: 100px; display: none" id="alertt">
                            <div class="alert alert-success alert-dismissable" id="alertmod">
                                <strong>
                                    <p id="alertmsg"></p>
                                </strong>
                            </div>
                        </div>
                        <!--end-->



                        <asp:GridView ID="gvconsist" OnRowDataBound="gvconsist_RowDataBound" CssClass="table table-striped  custab datatab box-shadow--6dp " AutoGenerateColumns="false" runat="server">
                            <Columns>

                                <asp:TemplateField HeaderText="Constituency No">
                                    <ItemTemplate>

                                        <asp:Label ID="lblconsistname" runat="server" Text='<%#Eval("ID") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Left" />
                                    <HeaderStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblconsistnum" runat="server" Text='<%#Eval("CONSTITUENCY_NAME") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Left" />
                                    <HeaderStyle HorizontalAlign="Left" />
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="TDP">
                                    <ItemTemplate>
                                        <span class="pointer">
                                            <asp:Label ID="lbltdp" runat="server" Text='<%#Eval("Tdp") %>'></asp:Label>
                                        </span>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Left" />
                                    <HeaderStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="YSRCP">
                                    <ItemTemplate>
                                        <span class="pointer">
                                            <asp:Label ID="lblysrcp" runat="server" Text='<%#Eval("Ysrcp") %>'></asp:Label></span>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Left" />
                                    <HeaderStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Janasena">
                                    <ItemTemplate>
                                        <span class="pointer">
                                            <asp:Label ID="lbljanasena" runat="server" Text='<%#Eval("janasena") %>'></asp:Label></span>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Left" />
                                    <HeaderStyle HorizontalAlign="Left" />
                                </asp:TemplateField>

                                <%--<asp:TemplateField HeaderText="BJP">
                                    <ItemTemplate>
                                        <span class="pointer"> <asp:Label ID="lblbjp" runat="server" Text='<%#Eval("Bjp") %>'></asp:Label></span>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Left" />
                                    <HeaderStyle HorizontalAlign="Left" />
                                </asp:TemplateField>--%>
                            </Columns>
                        </asp:GridView>

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

                    <label>Enter Email to share your predictions</label>


                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <label>Email</label>
                            <asp:TextBox ID="txtemmb" runat="server" placeholder=" " class="floating-input totalCount"></asp:TextBox>
                            <label id="lblstcode" class="urlcss">Share link</label>
                            <asp:TextBox ID="txturl" runat="server" placeholder="" class="readonly floating-input totalCount urlcss"></asp:TextBox>

                        </div>

                        <br />
                        <div class="col-md-12" style="padding-top: 10px">
                            <input type="button" class="btn btn-primary pull-right" id="btnpopup" value=" Save & Share" />
                            <%--<button type="button" id="btnpopup">Save & Continue</button>--%>
                        </div>
                    </div>
                    <div class="row urlcss">
                        <div class="col-md-12">
                            <a class="btnz share pinterest" id="whatsup" style="margin-right: 15px;" target="_blank"><i class="fa fa-whatsapp"></i><span>Share</span></a>
                            <iframe class="btn" title="facebook share" id="fshareurl" src="https://www.facebook.com/plugins/share_button.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&layout=button&size=large&appId=1553498291449422&width=100%&height=100%" width="73" height="28" style="margin-left: 14px; border: none; overflow: hidden; font-size: larger" scrolling="no" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                            <a class="btnz share facebook " style="float: right; cursor: pointer" id="btncurl"><i class="fa fa-clipboard"></i><span style="padding-left: 6px;">Copy Url</span></a>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>

    <!-- Popup end here-->



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" runat="Server">
    <script>
        var ss = '<%=Session["email"]%>';
        var sID = '<%=Session["userid"]%>';
        var totalcount = $('#cphBody_gvconsist td:nth-child(3)');

        var SelectedCandidates = [];

        $(document).ready(function () {
            Changecoloronclick();
            CountofHigh();
            $("#cphBody_totalconsist").text($("[id*=gvconsist] tr").length - 1);
            var queryStr = getUrlParameter('scode');
            if (queryStr != '') {
                $("#predFieldsSet").hide();
                $("#predFieldsGet").show();
            }
            else {
                $("#predFieldsSet").show();
                $("#predFieldsGet").hide();
            }
            $("#predFieldsGet").click(function () {
                $(this).hide();
                $("#predFieldsSet").show();
                $('html, body').animate({
                    scrollTop: $("#predFieldsSet").offset().top
                }, 1000);
            });

            $("#predFieldsGet").hover(function () {
                $(this).css('cursor', 'pointer');
            });

        });

        function getUrlParameter(name) {
            name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
            var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
            var results = regex.exec(location.search);
            return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
        };

        function Hovercolor() {
            $('#cphBody_gvconsist td:nth-child(3)').hover(function () {
                $(this).addClass('hjanasena');
            }, function () { $(this).removeClass('hjanasena'); });
            $('#cphBody_gvconsist td:nth-child(4)').hover(function () {
                $(this).addClass('htdp');
            }, function () { $(this).removeClass('htdp'); });
            $('#cphBody_gvconsist td:nth-child(5)').hover(function () {
                $(this).addClass('hysrcp');
            }, function () { $(this).removeClass('hysrcp'); });
            $('#cphBody_gvconsist td:nth-child(6)').hover(function () {
                $(this).addClass('hbjp');
            }, function () { $(this).removeClass('hbjp'); });
        }

        function Changecoloronclick() {
            $('#cphBody_gvconsist td:nth-child(3)').click(function () {
                var janasena = $(this).closest('tr').children('td:eq( 4 )');
                var ysr = $(this).closest('tr').children('td:eq( 3 )');
                var bjp = $(this).closest('tr').children('td:eq( 5 )');
                if (janasena.hasClass('janasena') || ysr.hasClass('ysrcp') || bjp.hasClass('bjp')) {
                    janasena.removeClass('janasena');
                    ysr.removeClass('ysrcp');
                    bjp.removeClass('bjp');
                    $(this).addClass('tdp');
                    CountofHigh();

                }
                else {
                    $(this).addClass('tdp');
                    CountofHigh();

                }
            });
            $('#cphBody_gvconsist td:nth-child(4)').click(function () {

                var janasena = $(this).closest('tr').children('td:eq( 4 )');
                var tdp = $(this).closest('tr').children('td:eq( 2 )');
                var bjp = $(this).closest('tr').children('td:eq( 5 )');

                if (janasena.hasClass('janasena') || tdp.hasClass('tdp') || bjp.hasClass('bjp')) {
                    janasena.removeClass('janasena');
                    tdp.removeClass('tdp');
                    bjp.removeClass('bjp');
                    $(this).addClass('ysrcp');
                    CountofHigh();
                }
                else {
                    $(this).addClass('ysrcp');
                    CountofHigh();
                }
            });
            $('#cphBody_gvconsist td:nth-child(5)').click(function () {

                var ysr = $(this).closest('tr').children('td:eq( 3 )');
                var tdp = $(this).closest('tr').children('td:eq( 2 )');
                var bjp = $(this).closest('tr').children('td:eq( 5 )');
                if (ysr.hasClass('ysrcp') || tdp.hasClass('tdp') || bjp.hasClass('bjp')) {
                    tdp.removeClass('tdp');
                    ysr.removeClass('ysrcp');
                    bjp.removeClass('bjp');
                    $(this).addClass('janasena');
                    CountofHigh();
                }
                else {
                    $(this).addClass('janasena');
                    CountofHigh();
                }
            });
            $('#cphBody_gvconsist td:nth-child(6)').click(function () {
                var ns = $(this).text();
                var janasena = $(this).closest('tr').children('td:eq( 4 )');
                var tdp = $(this).closest('tr').children('td:eq( 2 )');
                var ysr = $(this).closest('tr').children('td:eq( 3 )');
                if (janasena.hasClass('janasena') || tdp.hasClass('tdp') || ysr.hasClass('ysrcp')) {
                    janasena.removeClass('janasena');
                    tdp.removeClass('tdp');
                    ysr.removeClass('ysrcp');
                    $(this).addClass('bjp');
                    CountofHigh();
                }
                else {
                    $(this).addClass('bjp');
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
            cnt[0] = $(".janasena").length;
            cnt[1] = $(".tdp").length;
            cnt[2] = $(".ysrcp").length;
            cnt[3] = $(".bjp").length;
            $("#pjanasena").html(cnt[0]);
            $("#ptdp").html(cnt[1]);
            $("#pysrcp").html(cnt[2]);
            $("#pbjp").html(cnt[3]);

        }

        var seconds = 3;
        setTimeout(function () {
            document.getElementById("#alertt").style.display = "none";
        }, seconds * 1000);
    </script>
    <script>
        function IsEmail(email) {
            var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (!regex.test(email)) {
                return false;
            } else {
                return true;
            }
        }
        var fullData;
        $("#cphBody_txtemmb").keyup(function () {
            var email = $(this).val();
            if (IsEmail(email) == true)
                $("#btnpopup").attr("disabled", false);
            else
                $("#btnpopup").attr("disabled", true);
        });
        $('#btnsave').click(function () {
            $('#btnpopup').show().val('Save & Share').prop('disabled', true);
            $("#cphBody_txtemmb").val('').focus();
            $(".urlcss").add('#fshareurl').hide();
        });

        function getSelected() {
            var jc = $('#cphBody_gvconsist td:nth-child(5).janasena');
            var tdp = $('#cphBody_gvconsist td:nth-child(3).tdp');
            var ysr = $('#cphBody_gvconsist td:nth-child(4).ysrcp');
            var bjp = $('#cphBody_gvconsist td:nth-child(6).bjp');
            var jcl = jc.map(function () {
                return this.innerText;
            }).get().join(',');
            var tdpl = tdp.map(function () {
                return this.innerText;
            }).get().join(',');
            var ysrl = ysr.map(function () {
                return this.innerText;
            }).get().join(',');
            var bjpl = bjp.map(function () {
                return this.innerText;
            }).get().join(',');

            var eachPrtyCount = $("#ptdp").text() + ',' + $("#pysrcp").text() + ',' + $("#pjanasena").text() + ',' + $("#pbjp").text();
            fullData = '<%=requeststr%>' + ":" + $("#cphBody_txtemmb").val() + ':' + jcl + "," + tdpl + "," + ysrl + "," + bjpl + ':' + eachPrtyCount;

        }

        function mail(sub, shlnk, to) {
            var entities = {};
            entities.Subject = sub;
            entities.Sharelink = shlnk;
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
            if ($('#cphBody_txtemmb').val() != '') {
                $("#btnpopup").val('One moment...');
                getSelected();
                var toemail = $('#cphBody_txtemmb').val();
                var ht = 'http://ap.electionmonk.com/districtcc.aspx?scode=';
                $.ajax({
                    type: "POST",
                    url: "/districtcc.aspx/GetCode",
                    data: "{'data':'" + fullData + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d != "DUPLICATE") {
                            $("#btnpopup").hide();
                            $(".urlcss").slideDown().val('http://ap.electionmonk.com/districtcc.aspx?scode=' + msg.d);
                            mail("Your prediction at ElectionMonk", ht + msg.d, toemail);
                            $('#fshareurl').show().removeAttr("src");
                            $('#fshareurl').attr('src', "https://www.facebook.com/plugins/share_button.php?href=" + $('#cphBody_txturl').val());
                            $("#whatsup").attr("href", 'https://wa.me/?text=http://ap.electionmonk.com/districtcc.aspx?scode=' + msg.d + '.' + " Here's my prediction for the AP Assembly Elections. Guess yours at ap.electionmonk.com  #electionmonk #APElections2019.");
                        }
                        //else {
                        //    $("#btnpopup").val('User exist!');
                        //    setTimeout(function () {
                        //        $("#btnpopup").val('Save & Share.');
                        //    }, 2500);
                        //}
                    }
                });
            }
            else {
                $("#cphBody_txtemmb").empty().focus();
                $('#btnpopup').prop('disabled', true);
            }
        });


    </script>

    <script>
        $("#btncurl").click(function () {
            var copyText = document.getElementById("cphBody_txturl");
            //alert(copyText);
            copyText.select();
            document.execCommand('copy');
        });

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

