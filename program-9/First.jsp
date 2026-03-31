<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%
String name=request.getParameter("uname");
out.print("Welcome to advanced java programming !"+name);
session.setAttribute("user", name);
%>
<br><br>
<a href="second.jsp">Go second page of session program</a>
</body>