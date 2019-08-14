<%@ Page Title="" Language="C#" MasterPageFile="~/emonk.master" AutoEventWireup="true" CodeFile="apcandidateslist.aspx.cs" Inherits="apcandidateslist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <style>
        
            @media only screen and (max-width: 600px) {
                .no-more-tables td {
                    font-size:10px !important
                
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
  
      <section>
          <div class="container">
                <%--<div class="row">

                    <div class="col-md-12">--%>
                        <center><h3>List of Constituencies</h3></center>
                        <div id="cphBody_divPredictionData" style="padding: 50px" class="table-responsive no-more-tables">
                 
                                
                                  <asp:GridView ID="gvlist" CssClass="table table-striped  custab datatab box-shadow--6dp " OnRowDataBound="gvlist_RowDataBound" runat="server" AutoGenerateColumns="false" >
                        <Columns>
                            <asp:TemplateField HeaderText="Constituency No">
                                <ItemTemplate>
                                    <asp:Label ID="lblconsistnum" runat="server" Text='<%#Eval("ID") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" CssClass="toUpper" />
                                <HeaderStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                           
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblconsistnum" runat="server" Text='<%#Eval("CONSTITUENCY_NAME") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" CssClass="toUpper" />
                                <HeaderStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                            

                            <asp:TemplateField HeaderText="TDP" HeaderStyle-BackColor="#FCFE00">
                                <ItemTemplate>
                                    <asp:Label ID="lbltdp" runat="server" Text='<%#Eval("Tdp") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left"  CssClass="toUpper" />
                                <HeaderStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="YSRCP" HeaderStyle-BackColor="#87CEEB">
                                <ItemTemplate >
                                    <asp:Label ID="lblysrcp" runat="server" Text='<%#Eval("Ysrcp") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left"  CssClass="toUpper" />
                                <HeaderStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="JANASENA" HeaderStyle-BackColor="#D42A29">
                                <ItemTemplate>
                                    <asp:Label ID="lbljanasena" runat="server" Text='<%#Eval("Janasena") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left"  CssClass="toUpper" />
                                <HeaderStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="BJP" HeaderStyle-BackColor="#E86329">
                                <ItemTemplate>
                                    <asp:Label ID="lblbjp" runat="server" Text='<%#Eval("Bjp") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left"   CssClass="toUpper"/>
                                <HeaderStyle HorizontalAlign="Left" />
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                        </div>

          </div>
          <%--</div>
              </div>--%>
              </section>   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" runat="Server">
</asp:Content>

