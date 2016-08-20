using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class communion_person : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        BaseClass bc = new BaseClass();
        ListBox1.DataSource= bc.GetDataSet("select * from sysUser where sign=1","sysUser");
        ListBox1.DataTextField = "userName";
        ListBox1.DataValueField = "userName";
        ListBox1.DataBind();
    }
}
