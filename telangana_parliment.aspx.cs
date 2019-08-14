using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    ParliamentDAL dAL = new ParliamentDAL();
    List<oParliment> parliments = new List<oParliment>();
    public string usermail, predictsstring, shortcode;
    public string[] userpredicts;

    protected void Page_Load(object sender, EventArgs e)
    {
        gridbind();
    }

    public void gridbind()
    {
        gvlist.DataSource = dAL.telanganaParliments();
        gvlist.DataBind();
    }

    protected void gvlist_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            parliments = dAL.gETtelaPredictions();
            TableCellCollection cell = e.Row.Cells;
            cell[0].Attributes.Add("data-title", "ID");
            cell[1].Attributes.Add("data-title", "NAME");
            cell[2].Attributes.Add("data-title", "TRS");
            cell[3].Attributes.Add("data-title", "INC");
            cell[4].Attributes.Add("data-title", "BJP");
            cell[5].Attributes.Add("data-title", "Others");

            Label lbltrs = (Label)e.Row.FindControl("lbltrs");
            Label lblINC = (Label)e.Row.FindControl("lblINC");
            Label lblOTHERS = (Label)e.Row.FindControl("lblOTHERS");
            Label lblbjp = (Label)e.Row.FindControl("lblBJP");
            if (Request.QueryString["scode"] == null)
            {
                shortcode = "341066";
            }
           else if (Request.QueryString["scode"] != null)
            {
                shortcode = Request.QueryString["scode"];
            }
            foreach (var item in parliments.Where(t => t.Shortcode == shortcode))
            {
                predictsstring = item.Userpredicts;
                userpredicts = predictsstring.Split(',');
                for (int i = 0; i < userpredicts.Length; i++)
                {
                    if (lbltrs.Text == userpredicts[i])
                    {
                        e.Row.Cells[2].Attributes.Add("class", "trs");
                    }
                    if (lblINC.Text == userpredicts[i])
                    {
                        e.Row.Cells[3].Attributes.Add("class", "inc");
                    }
                    if (lblbjp.Text == userpredicts[i])
                    {
                        e.Row.Cells[4].Attributes.Add("class", "bjp");
                    }
                    if (lblOTHERS.Text == userpredicts[i])
                    {
                        e.Row.Cells[5].Attributes.Add("class", "others");
                    }
                }
            }
        }
    }
}