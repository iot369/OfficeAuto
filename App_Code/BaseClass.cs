using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Collections;
/// <summary>
/// BaseClass 的摘要说明
/// </summary>
public class BaseClass:System.Web.UI.Page
{
	public BaseClass()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
    }
    #region 显示客户端对话框
    /// <summary>
    /// 说明：MessageBox用来在客户端弹出对话框。
    /// 参数：TxtMessage 对话框中显示的内容。
    /// 创建日期：2006-1-20
    /// 创建人：张耀庭
    /// </summary>
    public string MessageBox(string TxtMessage)
    {
        string str;
        str ="<script language=javascript>alert('" + TxtMessage + "')</script>";
        return str;
    }
    #endregion
    #region  执行SQL语句
    /// <summary>
    /// 说明：ExecSQL用来执行SQL语句。
    ///	返回值：操作是否成功(True\False)。
    ///	参数：sQueryString SQL字符串
    /// 创建日期：2006-1-22
    /// 创建人：张耀庭
    /// </summary>
    public Boolean ExecSQL(string sQueryString)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
        con.Open();
        SqlCommand dbCommand = new SqlCommand(sQueryString,con);
        try
        {
            dbCommand.ExecuteNonQuery();
            con.Close();
        }
        catch (System.Exception e)
        {
            con.Close();
            return false;
        }
        return true;
    }
    #endregion
    #region
    /// <summary>
    /// 说明：GetDataSet数据集，返回数据源的数据集
    ///	返回值：数据集DataＳat
    ///	参数：sQueryString SQL字符串，TableName 数据表名称
    /// 创建日期：2006-1-22
    /// 创建人：张耀庭
    /// </summary>
    public System.Data.DataSet GetDataSet(string sQueryString, string TableName)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
        con.Open();
        SqlDataAdapter dbAdapter = new SqlDataAdapter(sQueryString, con);
        DataSet dataset = new DataSet();
        dbAdapter.Fill(dataset, TableName);
        con.Close();
        return dataset;
    }
    #endregion
    /// <summary>
    /// 说明：插入哈稀表
    ///	返回值：无
    ///	参数：id　主键
    /// 创建日期：2006-2-10
    /// 创建人：张耀庭
    /// </summary>
    //////public void goDataSet(string id)   
    //////{
    //////    if (Session["bus"] == null)
    //////    {
    //////        Hashtable ht = new Hashtable();
    //////        ht.Add(id, 1);
    //////        Session["bus"] = ht;
    //////        Dafill(ht);
    //////    }
    //////    else
    //////    {
    //////        Hashtable ht = (Hashtable)Session["bus"];
    //////        if (ht[id] == null)
    //////        {
    //////            ht[id] = 1;
    //////        }
    //////        else
    //////        {
    //////            ht[id] = (int)ht[id] + 1;
    //////        }
    //////        Session["bus"] = ht;
    //////        dafill(ht);
    //////    }
    //////}
    ///////// <summary>
    ///////// 说明：将查出的数据填充到数据集中
    /////////	返回值：无
    /////////	参数：id　主键
    ///////// 创建日期：2006-2-10
    ///////// 创建人：张耀庭
    ///////// </summary>
    //////public void Dafill(Hashtable ht)
    //////{
    //////    godset.Clear();
    //////    foreach (DictionaryEntry de in ht)
    //////    {
    //////        hh = ht[de.Key.ToString()].ToString();
    //////        SqlDataAdapter datap = new SqlDataAdapter("select * from tb_goods where id='" + de.Key.ToString() + "'", System.Configuration.ConfigurationManager.AppSettings["ccc"]);

    //////        if (datap != null)
    //////        {
    //////            datap.Fill(godset);
    //////        }
    //////    }
    //////}

}
