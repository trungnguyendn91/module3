package Servlet;

import Model.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = {"/customer"})
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();
    @Override
    public void init() throws ServletException{
        customerList.add(new Customer("Thái Nhọ", "12/07/1993", "Đà Nẵng", "https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.18169-9/11990609_820197744760468_3613329330695109073_n.jpg?stp=dst-jpg_p206x206&_nc_cat=109&ccb=1-7&_nc_sid=da31f3&_nc_ohc=NycVa9K9wioAX-gHPjp&_nc_ht=scontent.fsgn2-4.fna&oh=00_AT-VP5LTa-6JuTBxZ9O2fXiCVgJ69xnaCyKD-v8cQ0aTwg&oe=63066AFC"));
        customerList.add(new Customer("Tuấn Khỉ", "21/12/1995", "Đà Nẵng", "https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.6435-9/70279157_1426700757478851_114143063743397888_n.jpg?stp=c0.79.206.206a_dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=8J6L7T1M-voAX8P1VR_&tn=Vc_YwBhVP5P4de25&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT8NhV_0UwER9jMUaYLxH6in78oO_VCM9C1QkQ2iAW6AUQ&oe=6308AA7E"));
        customerList.add(new Customer("Huy Art", "26/10/1992", "Đà Nẵng", "https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.6435-9/87759455_2578478545721268_7781470722957770752_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=CiiOk564C34AX9LCfuC&tn=Vc_YwBhVP5P4de25&_nc_ht=scontent.fsgn2-4.fna&oh=00_AT9IWEvHBKhkpX2_OTr4nqwiRWi9S0EkJLUiSFHVlpDiZA&oe=6309BE25"));
        customerList.add(new Customer("Phú Pinky", "29/11/1997", "Đà Nẵng", "https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.18169-9/12250123_1831867643706481_8035933070079923914_n.jpg?stp=c0.53.206.206a_dst-jpg_p206x206&_nc_cat=102&ccb=1-7&_nc_sid=da31f3&_nc_ohc=4cGRbVYa86oAX9Gqjg2&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT-7gOW6yd4WuJ9I766AopyZCjkQr16iXf9-MUFnoGXXeg&oe=63096748"));
        customerList.add(new Customer("Quỳnh Spring", "11/06/1999", "Đà Nẵng", "https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.18169-9/13346525_283890121952700_5135691168376651246_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=174925&_nc_ohc=86GV30dUi_gAX8oQ0K8&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT-SbsKSQUrF-XDBgyBWNYbZPiK40pVoZCGjMmOtobPagw&oe=630604CD"));
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/Customer/list.jsp");
        request.setAttribute("customerList",customerList);
        requestDispatcher.forward(request,response);
    }
}
