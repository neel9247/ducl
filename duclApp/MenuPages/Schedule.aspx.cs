using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Provider;

namespace duclApp.MenuPages
{
    public partial class Schedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                dbTeam ldbTeam = new dbTeam();
                ddlTeam.DataSource = ldbTeam.GetDataTableAll(LocalUtils.ConnectionString, LocalUtils.YearOfPlay);
                ddlTeam.DataBind();

                FillSchedule();
            }

        }

        private void FillSchedule()
        {
            dbSchedule ldbSchedule = new dbSchedule();
            gvSchedule.DataSource = ldbSchedule.GetDataTable(LocalUtils.ConnectionString, Int32.Parse(ddlTeam.SelectedValue));
            gvSchedule.DataBind();
        }

        protected void ddlTeam_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillSchedule();
        }
    }
}