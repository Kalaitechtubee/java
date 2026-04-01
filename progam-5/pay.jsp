<%
String ename=request.getParameter("n1");
int bs = Integer.parseInt(request.getParameter("bs"));
if(bs >=8000)
{
double da=bs*0.4;
double hra=bs*0.6;
double gs=bs+da+hra;
out.println("<h2>Details of employee payslip</h2>");
out.println("<br>Basic Salary :"+bs);
out.println("<br>Dearness allowance :"+ da);
out.println("<br>House rent allowance :"+ hra);
out.println("<br>Gross salary :"+ gs);
}
else
{
out.println("Your Gross Salary is :"+bs);
out.println("<br>Your Salary is less than eight thousand ");} %>
