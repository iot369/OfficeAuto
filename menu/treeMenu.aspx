<%@ Page Language="C#" AutoEventWireup="true" CodeFile="treeMenu.aspx.cs" Inherits="menu_treeViewMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" type="text/css" href="../CSS/CSS.css" />
</head>
<body style="margin-left: 30px; background-image: url(../image/OA办公自动化职员登录左侧框.gif);">
    <form id="form1" runat="server">
        <br />
        <table style="width: 97px; height: 1px;" id="ig" class="css">
            <tr>
                <td colspan="3" rowspan="3" style="width: 702px; height: 342px;">
        <asp:TreeView ID="TreeView1" runat="server" Font-Size="Small" Height="427px" LineImagesFolder="~/icon"
            ShowLines="True" Width="150px" BackColor="#E1E8FF" CssClass="css" ForeColor="#072EAB" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
            <Nodes>
                <asp:TreeNode Text="系统桌面" Value="系统桌面">
                    <asp:TreeNode Text="传送文件" Value="传送文件" NavigateUrl="~/fileManage/sendFile.aspx" Target="rightFrame"></asp:TreeNode>
                    <asp:TreeNode Text="记事本" Value="记事本" NavigateUrl="~/BaseInfo/noteBook.aspx" Target="rightFrame"></asp:TreeNode>
                    <asp:TreeNode Text="注销用户" Value="注销用户"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="文件管理" Value="文件管理">
                    <asp:TreeNode Text="传送文件" Value="传送文件" NavigateUrl="~/fileManage/sendFile.aspx" Target="rightFrame"></asp:TreeNode>
                    <asp:TreeNode Text="接收文件" Value="接收文件" NavigateUrl="~/fileManage/inceptFile.aspx" Target="rightFrame"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="公告管理" Value="公告管理">
                    <asp:TreeNode Text="查看公告" Value="查看公告" NavigateUrl="../BaseInfo/noticeList.aspx" Target="rightFrame"></asp:TreeNode>
                    <asp:TreeNode Text="发布公告" Value="发布公告" NavigateUrl="~/BaseInfo/notice.aspx" Target="rightFrame"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="交流管理" Value="交流管理">
                    <asp:TreeNode Text="聊天室" Value="聊天室" NavigateUrl="~/communion/chatRoom.aspx" Target="rightFrame"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/communion/setVote.aspx" Target="rightFrame" Text="设置投票活动"
                        Value="设置投票活动"></asp:TreeNode>
                    <asp:TreeNode Text="活动投票" Value="活动投票" NavigateUrl="~/communion/vote.aspx" Target="rightFrame"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="考勤管理" Value="考勤管理">
                    <asp:TreeNode Text="员工上班签到" Value="员工上班签到" NavigateUrl="~/communion/checkAttendance/lateOrleave.aspx" Target="rightFrame"></asp:TreeNode>
                    <asp:TreeNode Text="员工下班签退" Value="员工下班签退" NavigateUrl="~/communion/checkAttendance/lateOrleave.aspx" Target="rightFrame"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="系统管理" Value="系统管理">
                    <asp:TreeNode Text="个人密码设置" Value="个人密码设置" NavigateUrl="~/system/updatePwd.aspx" Target="rightFrame"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="规章制度管理" Value="规章制度管理">
                    <asp:TreeNode Text="规章制度" Value="规章制度" NavigateUrl="~/rule/rule.aspx" Target="rightFrame"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
