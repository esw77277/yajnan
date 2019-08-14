﻿l<%@ Page Title="" Language="C#" MasterPageFile="~/emonk.master" AutoEventWireup="true" CodeFile="telangana.aspx.cs" Inherits="telangana" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
    <style>
        .kutami {
        background-color: pink;
        color: !important white;
    }

    .trs {
        background-color: #e41d7b;
        color: !important white;
    }

    .bjp {
        background-color: #ED6B0C;
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

    .others {
        background-color: plum;
        color: !important white;
    }
    .inc{
        background-color:deepskyblue;
    }




    .tdp {
        background-color: yellow;
        color: !important white;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">
     <h1>Telangana</h1>
    <div id="tooltip"></div><!-- div to hold tooltip. -->
    <svg viewBox="0 0 3700 1700" id="statesvg"></svg> <!-- svg to hold the map. -->
    <script src="JS/telangana.js"></script> <!-- creates india State. -->
    <script src="http://d3js.org/d3.v3.min.js"></script>
    <script>
        function tooltipHtml(n) {	/* function to create html content string in tooltip div. */
            return "<h4>" + n + "</h4>";
        }

        var sampleData = {};	/* Sample random data. */

        ["ADL",
            "NZMD",
            "KRN",
            "MDK",
            "WRG",
            "RNG",
            "MHB",
            "NLG",
            "KHM", "HYD"].forEach(function (d) {
                var low = Math.round(100 * Math.random()),
                    mid = Math.round(100 * Math.random()),
                    high = Math.round(100 * Math.random());
                sampleData[d] = {
                    low: d3.min([low, mid, high]),
                    high: d3.max([low, mid, high]),
                    avg: Math.round((low + mid + high) / 3),
                    color: d3.interpolate("#ffffcc", "#800026")(low / 100)
                };
            });

        /* draw states on id #statesvg */
        iStates.draw("#statesvg", sampleData, tooltipHtml);
        // iStates.draw("#statesvg");

        d3.select(self.frameElement).style("height", "600");
    </script>


    <input type="button" id="tg2014" value="2014" class="btn btn-primary" onclick="tg2014()" />
    <input type="button" id="tg2019" value="2019" class="btn btn-primary" onclick="tg2019()" />
    
     <div class="container">
        <div id="div2019" class="table-responsive padding20">
            <h3 class="btn btn-success">2019 Results</h3>
            <table id="divtable" class="table table-bordered">
                <thead>
                <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>TRS</th>
                    <th>BJP</th>
                    <th>Kutami</th>
                    <th>Others</th>
                    <th>winner Votes</th>
                    <th>Margin</th>
                </tr>
                    </thead>
                  <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>TRS</th>
                    <th>BJP</th>
                    <th>Kutami</th>
                    <th>Others</th>
                    <th>winner Votes</th>
                    <th>Margin</th>
                </tr>
            </table>
        </div>
        <div id="div2014" class="table-responsive padding20">
            <h3 class="btn btn-success">2014 Results</h3>
            <table id="divtable2014" class="table table-bordered">
                
                <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>TRS</th>
                    <th>INC</th>
                    <th>TDP</th>
                    <th>BJP</th>
                    <th>Others</th>
                    <th>winner Votes</th>
                    <th>Margin</th>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" Runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
     <script type="text/javascript">
        var table = $("#divtable");
        var table2014 = $("#divtable2014");
        var http = "http://103.73.221.75:94/api/";
        
        
        var selected = [];
        var slist = $("#listt");
        var v;
        $(document).ready(function () {
            Bind2019();
            $("#div2019").css("display", "block");
            Bind2014();
            $("#div2014").css("display", "none");
        });

       
        function Bind2019() {
            $.ajax({
                url: http+'tg2019',
                method: 'GET',
                dataType: 'json',
                success: function (data) {
                    $.each(data, function (idx, elem) {
                        table.append("<tr><td>" + elem.CONSISTENCY + "</td><td>" +
                            elem.CONSTITUENCY_NAME + "</td><td>" + elem.TRS +
                            "</td><td>" + elem.BJP + "</td><td>" + elem.KUTAMI +
                            "</td><td>" + elem.OTHERS + "</td><td>"
                            + elem.Winner_Vote + "</td><td>" + elem.Margin_Vote + "</td></tr>");


                        $("td:nth-child(3)").each(function () {
                            if ($(this).text() == elem.SelectedCandidate) {
                                $(this).addClass('trs');
                                // $("td:nth-child(3)").addClass('add');
                            }
                        });
                        $("td:nth-child(4)").each(function () {
                            if ($(this).text() == elem.SelectedCandidate) {
                                $(this).addClass('bjp');
                                // $("td:nth-child(3)").addClass('add');
                            }
                        });
                        $("td:nth-child(5)").each(function () {
                            if ($(this).text() == elem.SelectedCandidate) {
                                $(this).addClass('kutami');
                                // $("td:nth-child(3)").addClass('add');
                            }
                        });
                        $("td:nth-child(6)").each(function () {
                            if ($(this).text() == elem.SelectedCandidate) {
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
        function Bind2014() {
            $.ajax({
                url: http+'tg2014',
                method: 'GET',
                dataType: 'json',
                success: function (data) {
                    $.each(data, function (idx, elem) {
                        table2014.append("<tr><td>" + elem.CONSTITUENCY_NUMBER + "</td><td>" +
                            elem.CONSTITUENCY_NAME + "</td><td>" + elem.TRS +
                            "</td><td>" + elem.INC + "</td><td>" + elem.TDP +
                            "</td><td>" + elem.BJP + "</td><td>" + elem.OTHERS + "</td><td>"
                            + elem.WINNER_VOTE + "</td><td>" + elem.MARGIN_VOTE + "</td></tr>");


                        $("td:nth-child(3)").each(function () {
                            if ($(this).text() == elem.SELECTED_CANDIDATE) {
                                $(this).addClass('trs');
                                // $("td:nth-child(3)").addClass('add');
                            }
                        });
                        $("td:nth-child(4)").each(function () {
                            if ($(this).text() == elem.SELECTED_CANDIDATE) {
                                $(this).addClass('inc');
                                // $("td:nth-child(3)").addClass('add');
                            }
                        });
                        $("td:nth-child(5)").each(function () {
                            if ($(this).text() == elem.SELECTED_CANDIDATE) {
                                $(this).addClass('tdp');
                                // $("td:nth-child(3)").addClass('add');
                            }
                        });
                        $("td:nth-child(6)").each(function () {
                            if ($(this).text() == elem.SELECTED_CANDIDATE) {
                                $(this).addClass('bjp');
                                // $("td:nth-child(3)").addClass('add');
                            }
                        });

                        $("td:nth-child(7)").each(function () {
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


        function tg2014(){

            $("#div2014").css("display", "block");
            //Bind2014();
            $("#div2019").css("display", "none");

         }


        function tg2019() {
            $("#div2014").css("display", "none");
            //Bind2019();
            $("#div2019").css("display", "block");
        }

         

         $("#tg2014").click(function () {
             $("#div2014").css("display", "block");
            //Bind2014();
            $("#div2019").css("display", "none");
         });
         $("#tg2019").click(function () {
             $("#div2014").css("display", "none");
            //Bind2019();
            $("#div2019").css("display", "block");
         });



        
    </script>
    
</asp:Content>
