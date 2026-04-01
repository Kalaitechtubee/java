<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
int m1 = Integer.parseInt(request.getParameter("m1"));
int m2 = Integer.parseInt(request.getParameter("m2"));
int m3 = Integer.parseInt(request.getParameter("m3"));

int tot = m1 + m2 + m3;
int avg = tot / 3;

out.println("Your total is: " + tot + "<br>");
out.println("Your average is: " + avg + "<br>");

if(avg > 50) {
    out.println("Result: PASS");
} else {
    out.println("Result: FAIL");
}
%>
