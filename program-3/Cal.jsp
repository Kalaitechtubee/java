<%
int m1 = Integer.parseInt(request.getParameter("m1"));
int m2 = Integer.parseInt(request.getParameter("m2"));
int m3 = Integer.parseInt(request.getParameter("m3"));
int tot = m1 + m2 + m3;
int avg = tot/3;
out.println("your total is" + tot);
out.println("your average is" + avg);
if(avg > 50)
{
out.println("Your result is pass");
}
else
{
out.println("Your result is Fail");
}
%>