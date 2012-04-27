using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Provider;

namespace duclApp
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                dbSchedule ldbSchedule = new dbSchedule();
                ListView lvFixtures = (ListView)TabContainer1.Tabs[0].FindControl("lvFixtures");

                lvFixtures.DataSource = ldbSchedule.GetDataTable(LocalUtils.ConnectionString,
                                                                 DateTime.Now);
                lvFixtures.DataBind();
            }
        }
    }
}
