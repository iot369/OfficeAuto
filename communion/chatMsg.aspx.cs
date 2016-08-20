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

public partial class communion_chatShow : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        BaseClass bc = new BaseClass();
        if (Session["loginName"] == string.Empty)
        {
            Response.Write(bc.MessageBox("该用户在线20分钟,没有操作任何动作,即将返回到系统主页!"));
            Response.Redirect("../Index.aspx");
        }
        Response.Write(Application["chatMsg"]);
    }
}
