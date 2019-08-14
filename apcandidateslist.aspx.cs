using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class apcandidateslist : System.Web.UI.Page
{
    ConsistencyDAL dAL = new ConsistencyDAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        gvlist.DataSource = dAL.GetWINNERSLIST();
        gvlist.DataBind();
    }



    protected void gvlist_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            TableCellCollection cell = e.Row.Cells;
            cell[0].Attributes.Add("data-title", "Constituency No");
            cell[1].Attributes.Add("data-title", "Name");
            cell[2].Attributes.Add("data-title", "TDP");
            cell[3].Attributes.Add("data-title", "YSRCP");
            cell[4].Attributes.Add("data-title", "Janasena");
           
            cell[5].Attributes.Add("data-title", "BJP");
        }
    }
}