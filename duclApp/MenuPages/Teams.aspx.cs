using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Provider;

namespace duclApp.MenuPages
{
    public partial class Teams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                dbTeam ldbTeam = new dbTeam();

                gvGroupA.DataSource = ldbTeam.GetDataTable(LocalUtils.ConnectionString, LocalUtils.GroupA, LocalUtils.YearOfPlay);
                gvGroupA.DataBind();

                gvGroupB.DataSource = ldbTeam.GetDataTable(LocalUtils.ConnectionString, LocalUtils.GroupB, LocalUtils.YearOfPlay);
                gvGroupB.DataBind();
            }
        }
    }
}