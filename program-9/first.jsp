<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>First Page</title>
</head>

<body>

<%
String name = request.getParameter("uname");

session.setAttribute("user", name);

out.print("Welcome to Advanced Java Programming: " + name);
%>

<br><br>

<a href="second.jsp">Go second page of session program</a>

</body>
</html>
