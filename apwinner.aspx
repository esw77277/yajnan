<%@ Page Title="" Language="C#" MasterPageFile="emonk.master" AutoEventWireup="true" CodeFile="apwinner.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <style>
        .tdp {
            background-color: yellow;
        }

        .ysr {
            background-color: skyblue;
            color: !important white;
        }

        .bjp {
            background-color: #ED6B0C;
            color: !important white;
        }

        .others {
            background-color: plum;
            color: !important white;
        }

        #tooltip {
            position: absolute;
            text-align: center;
            padding: 20px;
            margin: 10px;
            font: 12px sans-serif;
            background: lightsteelblue;
            border: 1px;
            border-radius: 2px;
            pointer-events: none;
        }

            #tooltip h4 {
                margin: 0;
                font-size: 14px;
            }

        #tooltip {
            background: rgba(0,0,0,0.9);
            border: 1px solid grey;
            border-radius: 5px;
            font-size: 12px;
            width: auto;
            padding: 4px;
            color: white;
            opacity: 0;
        }

            #tooltip table {
                table-layout: fixed;
            }

            #tooltip tr td {
                padding: 0;
                margin: 0;
            }

                #tooltip tr td:nth-child(1) {
                    width: 50px;
                }

                #tooltip tr td:nth-child(2) {
                    text-align: center;
                }

        .state {
            fill: none;
            stroke: #a9a9a9;
            stroke-width: 1;
            cursor: pointer;
        }

            .state:hover {
                fill-opacity: 0.5;
            }

        .card-pricing.popular {
            z-index: 1;
            border: 3px solid #007bff;
        }

        .card-pricing .list-unstyled li {
            padding: .5rem 0;
            color: #6c757d;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <div style="background-color: white;">
        <div id="wait" style="display: none; padding: 5% 30% 20%">
            <img src="img/spinner.gif" /><br>
        </div>
    </div>
    <p id="arraylist"></p>
    <h1 id="listss"></h1>
    <div class="container mb-5 mt-5">
        <center><h3>List of Constituencies</h3></center>
        <div class="pricing card-deck flex-column flex-md-row mb-3">


            <div class="card-body pt-0">

                <div class="table-responsive no-more-tables">
                    <table id="divtable" class="table table-striped  custab datatab box-shadow--6dp" border="1" >
                        <tbody>
                            <tr>
                                <th>Constituency No</th>
                                <th>Name</th>
                                <th>TDP</th>
                                <th>YSRCP</th>
                                <th>BJP</th>
                                <th>Others</th>

                                <th>winner Votes</th>
                                <th>Margin</th>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>









    <div id="txt"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" runat="Server">

    <script type="text/javascript">
        var table = $("#divtable");
       // var http = "http://103.73.221.75:94/api/";
        var http = "http://23.96.13.116:86/api/";
        var selected = [];
        var slist = $("#listt");
        var v;
        var objcells;
        var al = $("#arraylist");
        $(document).ready(function () {
            $(document).ajaxStart(function () {
                $("#wait").css("display", "block");
            });
            $(document).ajaxComplete(function () {
                $("#wait").css("display", "none");
            });
            $("#txt").load("demo_ajax_load.asp");

            Bind();
        });
        function Bind() {
            $.ajax({
                url: http + 'ap2014',
                method: 'GET',
                dataType: 'json',
                success: function (data) {
                    $.each(data, function (idx, elem) {
                        selected.push(elem.CONSTITUENCY_NUMBER, elem.CONSTITUENCY_NAME)
                        table.append("<tr><td data-title='Constituency No'>" + elem.CONSTITUENCY_NUMBER
                            + "</td><td data-title='Name'>" + elem.CONSTITUENCY_NAME + "</td><td data-title='TDP'>"
                            + elem.TDP + "</td><td data-title='YSRCP'>" + elem.YSRCP + "</td><td data-title='BJP'>"
                            + elem.BJP + "</td><td data-title='OTHERS'>" + elem.OTHERS + "</td><td data-title='WINNER VOTE'>"
                            + elem.WINNER_VOTE
                            + "</td><td data-title='MARGIN VOTE'>" + elem.MARGIN_VOTE + "</td></tr>");
                        //slist.append("<li>" + elem.SELECTED_CANDIDATE + "</li>")
                        $("td:nth-child(3)").each(function () {
                            if ($(this).text() == elem.SELECTED_CANDIDATE) {
                                $(this).addClass('tdp');
                                // $("td:nth-child(3)").addClass('add');
                            }
                        });
                        $("td:nth-child(4)").each(function () {
                            if ($(this).text() == elem.SELECTED_CANDIDATE) {
                                $(this).addClass('ysr');
                                // $("td:nth-child(3)").addClass('add');
                            }
                        });
                        $("td:nth-child(5)").each(function () {
                            if ($(this).text() == elem.SELECTED_CANDIDATE) {
                                $(this).addClass('bjp');
                                // $("td:nth-child(3)").addClass('add');
                            }
                        });
                        $("td:nth-child(6)").each(function () {
                            if ($(this).text() == elem.SELECTED_CANDIDATE) {
                                $(this).addClass('others');
                                // $("td:nth-child(3)").addClass('add');
                            }
                        });
                    });
                },
                error: function (err) {
                    alert(err);
                }
            });
        }



    </script>
</asp:Content>

