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
//该源码下载自www.51aspx.com(５１ａｓpｘ．ｃｏｍ)

public partial class BaseInfo_updateDept : System.Web.UI.Page
{
    BaseClass bc = new BaseClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        GridView1.DataSource= bc.GetDataSet("select * from dept", "dept");
        GridView1.DataKeyNames = new String[] { "deptID" };
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex  = e.NewPageIndex;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            bc.ExecSQL("delete from dept where deptID='" + this.GridView1.DataKeys[e.RowIndex].Value.ToString() + "'");
            GridView1.DataSource = bc.GetDataSet("select * from dept", "dept");
            GridView1.DataBind();
        }
        catch(Exception ex)
        {
            Response.Write(bc.MessageBox(ex.Message));
        }
    }

}
//5１ａｓpｘ 10:09 2009-6-1