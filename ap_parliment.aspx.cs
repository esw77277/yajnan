using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    ParliamentDAL dAL = new ParliamentDAL();
    oParliment entities = new oParliment();
    List<oParliment> parliments = new List<oParliment>();
    public string usermail, predictsstring, shortcode;
    public string[] userpredicts;
    protected void Page_Load(object sender, EventArgs e)
    {
        gridbind();
    }

    public void gridbind()
    {
        gvlistparli.DataSource = dAL.andhraParliments();
        gvlistparli.DataBind();
    }

    protected void gvlist_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        parliments = dAL.ApPredictions();
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            TableCellCollection cell = e.Row.Cells;
            cell[0].Attributes.Add("data-title", "ID");
            cell[1].Attributes.Add("data-title", "NAME");
            cell[2].Attributes.Add("data-title", "TDP");
            cell[3].Attributes.Add("data-title", "YSRCP");
            cell[4].Attributes.Add("data-title", "JANASENA");
           // cell[5].Attributes.Add("data-title", "BJP");
            cell[5].Attributes.Add("data-title", "INC");
            cell[6].Attributes.Add("data-title", "Others");

            Label lbltdp = (Label)e.Row.FindControl("lbltdp");
            Label lblysrcp = (Label)e.Row.FindControl("lblysrcp");
            Label lbljanasena = (Label)e.Row.FindControl("lbljanasena");
           // Label lblbjp = (Label)e.Row.FindControl("lblbjp");
            Label lblinc = (Label)e.Row.FindControl("lblinc");
            Label lblothers = (Label)e.Row.FindControl("lblothers");

            if (Request.QueryString["scode"] != null)
                foreach (var item in parliments.Where(t => t.Shortcode == Request.QueryString["scode"]))
                    shortcode = Request.QueryString["scode"];
            else
                shortcode = "180911";

            foreach (var item in parliments.Where(a => a.Shortcode == shortcode))
            {
                predictsstring = item.Userpredicts;
                userpredicts = predictsstring.Split(',');
                for (int i = 0; i < userpredicts.Length; i++)
                {
                    if (lbltdp.Text == userpredicts[i])
                    {
                        e.Row.Cells[2].Attributes.Add("class", "tdp");

                    }
                    if (lblysrcp.Text == userpredicts[i])
                    {
                        e.Row.Cells[3].Attributes.Add("class", "ysrcp");
                    }
                    if (lbljanasena.Text == userpredicts[i])
                    {
                        e.Row.Cells[4].Attributes.Add("class", "janasena");
                    }
                    //if (lblbjp.Text == userpredicts[i])
                    //{
                    //    e.Row.Cells[5].Attributes.Add("class", "bjp");
                    //}

                    if (lblinc.Text == userpredicts[i])
                    {
                        e.Row.Cells[5].Attributes.Add("class", "inc");
                    }
                    if (lblothers.Text == userpredicts[i])
                    {
                        e.Row.Cells[6].Attributes.Add("class", "others");
                    }
                }


            }
        }
    }
}