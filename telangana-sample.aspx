<%@ Page Title="" Language="C#" MasterPageFile="~/emonk.master" AutoEventWireup="true" CodeFile="telangana-sample.aspx.cs" Inherits="telangana_sample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
        <link href="https://timesofindia.indiatimes.com/elections/ele/elections/electionhomepagewidget_new.cms" rel="stylesheet" />
    <link href="https://timesofindia.indiatimes.com/css_eventspecial/hcls-blackrock%20electiontheme,version-57,minify-1.cms" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" Runat="Server">
        <div class="container-fluid">
    <section>
  

        <div class="row">
        <div class="col-md-12" style="margin-right:250px;">
            <div data-parent-tab="Telangana" class="tab-content data-hub-frame telangana active" style="margin-top: 25px;">
                <iframe class="datahub_iframe_ipad" frameborder="0" width="100%" height="100%" src="https://timesofindia.indiatimes.com/elections/assembly-elections/electoralmap_iframe/state-telangana,brand-0.cms"></iframe></div>
        </div>

          
            </div>


        <div class="row">
            <div class="col-md-12 card">
                <div >
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
                </div>
            </div>
        </div>
    </section>
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
         a


        
    </script>
   
</asp:Content>

