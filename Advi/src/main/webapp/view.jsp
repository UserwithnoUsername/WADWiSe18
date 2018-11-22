<%@ page language="java"%>
<%@ page import="java.lang.*"%>
<%@ page import="de.htw.ai.wad.model.User"%>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<title>Login-Demo</title>
</head>
<body>
<H1>Hello</H1>
<br>
You are ...
<br/> 
<% User user = (User) session.getAttribute("user"); %>
Name <%=user.toString()%>
</body>
</html>