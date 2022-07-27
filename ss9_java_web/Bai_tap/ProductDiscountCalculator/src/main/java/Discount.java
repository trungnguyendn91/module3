import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Discount", value = "/Discount")
public class Discount extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String  productDescription = request.getParameter("productDescription");
        double price = Double.parseDouble(request.getParameter("price"));
        double discountRate = Double.parseDouble(request.getParameter("discountRate"));
        double discountAmount =  price*discountRate*0.01;
        double discountPrice = price - discountAmount;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");

        request.setAttribute("Mo ta san pham",productDescription);
        request.setAttribute("Gia san pham",price);
        request.setAttribute("Chiet khau %",discountRate);
        request.setAttribute("So tien duoc giam",discountAmount);
        request.setAttribute("Gia sau khi giam",discountPrice);

        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
