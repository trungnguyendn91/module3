import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ChangeMoney", value= "/change")
public class ChangeMoney extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //request.getParameter("rate"): lấy về giá trị của tham số "rate" trong trường input text.
        // Chuyển giá trị này sang số thực và gán vào biển rate
        float rate = Float.parseFloat(request.getParameter("rate"));
        //request.getParameter("usd"): lấy về giá trị của tham số "usd" trong trường input text.
        // Chuyển giá trị này sang số thực và gán vào biển usd
        float usd = Float.parseFloat(request.getParameter("usd"));

        float vnd = rate * usd;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        request.setAttribute("vnd", vnd);

        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
