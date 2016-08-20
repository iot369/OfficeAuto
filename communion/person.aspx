<%@ Page Language="C#" AutoEventWireup="true" CodeFile="person.aspx.cs" Inherits="communion_person" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <meta http-equiv="refresh" content="9" />
    <link rel="stylesheet" type="text/css" href="../CSS/CSS.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" class="css">
        在线人员名单：<br />
        <asp:ListBox ID="ListBox1" runat="server" Height="390px" Width="78px" CssClass="css"></asp:ListBox></div>
    </form>
</body>
</html>
