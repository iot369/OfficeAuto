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
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;

public partial class communion_sendMsg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BaseClass bc = new BaseClass();
        if (Session["loginName"] == string.Empty)
        {
            Response.Write(bc.MessageBox("该用户在线20分钟,没有操作任何动作,即将返回到系统主页!"));
            Response.Redirect("../Index.aspx");
        }
    }
    protected void btnSendMsg_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == string.Empty) return;
        Application.Set("chatMsg", "<font size=4>" + Application["chatMsg"] + "<br>" + Convert.ToString(Session["loginName"]) + " 说：　" + TextBox1.Text + " </font>     「<font size=2>" + DateTime.Now.ToString() + "</font>」");
    }
    protected void TextBox1_Load(object sender, EventArgs e)
    {
        if (TextBox1.Text == string.Empty) return;
        Application.Set("chatMsg", "<font size=4>" + Application["chatMsg"] + "<br>" + Convert.ToString(Session["loginName"]) + " 说：　" + TextBox1.Text + " </font>     「<font size=2>" + DateTime.Now.ToString() + "</font>」");
        TextBox1.Text = "";
    }
}
