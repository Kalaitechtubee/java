import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/PurchaseSevlet"})
public class PurchaseSevlet extends HttpServlet {
private static final long serialversionUID = 1L;
protected void doPost (HttpServletRequest request, HttpServletResponse
response)
throws ServletException, IOException {
response.setContentType("text/html");
PrintWriter out = response.getWriter();
//Retrive from data
String orderId = request.getParameter("orderId");
String customerName = request.getParameter("customerName");
String productName = request.getParameter("productName");
int quantity = Integer.parseInt(request.getParameter("quantity"));
double price =Double.parseDouble(request.getParameter("price"));
double total = quantity*price;
out.println("<html><body>");
out.println("<h2>Purchase Order Summary");
out.println("<p><b>Order ID: </b>" + orderId + "</p>");
out.println("<p><b>Customer Name: </b>" + customerName + "</p>");
out.println("<p><b>Product Name: </b>" + productName + "</p>");
out.println("<p><b>Quantity: </b>" + quantity + "</p>");
out.println("<p><b>Price per Unit: </b>" + price + "</p>");
out.println("<p><b>Total Amount: </b>" + total + "</p>");
out.println("</html></body>");
}
}