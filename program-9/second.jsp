<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Second Page</title>
</head>

<body>

<%
String name = (String) session.getAttribute("user");

if(name != null){
    out.print("Session is executed successfully by: " + name);
} else {
    out.print("Session not found!");
}
%>

</body>
</html>
