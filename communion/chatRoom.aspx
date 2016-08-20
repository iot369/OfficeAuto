<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chatRoom.aspx.cs" Inherits="communion_chatRoom" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<frameset rows="*,15%" cols="*" frameborder="YES" border="1" framespacing="0">
  <frameset cols="*,20%" frameborder="yes" border="1" framespacing="0">
    <frame src="chatMsg.aspx" name="mainFrame">
    <frame src="person.aspx" name="rightFrame" scrolling="NO" noresize>
  </frameset>
  <frame src="sendMsg.aspx" name="bottomFrame" scrollin="no" noresize>
</frameset>
<noframes><body>
</body></noframes>
</html>
