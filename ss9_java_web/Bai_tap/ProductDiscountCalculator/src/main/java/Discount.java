import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DiscountServlet", value = "/Discount")
public class Discount extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String  productDescription = request.getParameter("productDescription");
        double price = Double.parseDouble(request.getParameter("price"));
        double discountRate = Double.parseDouble(request.getParameter("discountRate"));
        double discountAmount =  price*discountRate*0.01;
        double discountPrice = price - discountAmount;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");

        request.setAttribute("productDescription",productDescription);
        request.setAttribute("price",price);
        request.setAttribute("discountRate",discountRate);
        request.setAttribute("discountAmount",discountAmount);
        request.setAttribute("discountPrice",discountPrice);

        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
    }
}
