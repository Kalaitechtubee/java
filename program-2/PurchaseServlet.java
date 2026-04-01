import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/PurchaseServlet")
public class PurchaseServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get values from form
        String product = request.getParameter("product");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        String address = request.getParameter("shipping_address");
        String payment = request.getParameter("payment_method");

        double total = quantity * price;

        out.println("<html><body>");
        out.println("<h2>Purchase Order Summary</h2>");

        out.println("<p><b>Product:</b> " + product + "</p>");
        out.println("<p><b>Quantity:</b> " + quantity + "</p>");
        out.println("<p><b>Price per Unit:</b> " + price + "</p>");
        out.println("<p><b>Total Amount:</b> " + total + "</p>");
        out.println("<p><b>Shipping Address:</b> " + address + "</p>");
        out.println("<p><b>Payment Method:</b> " + payment + "</p>");

        out.println("</body></html>");
    }
}
