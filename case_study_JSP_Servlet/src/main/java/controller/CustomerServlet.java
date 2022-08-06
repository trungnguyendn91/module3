package controller;

import model.customer.Customer;
import repository.customerRepository.ICustomerRepository;
import service.ICustomerService;
import service.impl.CustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns ="/customers")
public class CustomerServlet extends HttpServlet {
    private ICustomerService customerService = new CustomerService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action==null){
            action ="";
        }
        switch (action){
            case "add":
                addCustomer(request,response);
                break;
            case "delete":
                //deleteCustomer(request,response);
                break;
            case "edit":
                //editCustomer(request,response);
            default:
        }
    }
    private void addCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String customerCode = request.getParameter("customer_code");
        int customerType  = Integer.parseInt(request.getParameter("type"));
        String customerName = request.getParameter("name");
        String customerBirth = request.getParameter("birthday");
        int customerGender = Integer.parseInt(request.getParameter("gender"));
        int customerIdCard = Integer.parseInt(request.getParameter("idCard"));
        int customerPhone = Integer.parseInt(request.getParameter("phone_number"));
        String email = request.getParameter("email");
        String customerAddress = request.getParameter("address");
        Customer customer = new Customer(customerCode,customerType,customerName,customerBirth,customerGender,customerIdCard,customerPhone,email,customerAddress);
        RequestDispatcher dispatcher = request.getRequestDispatcher("");
        dispatcher.forward(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                case "create":
                   //showNewForm(request, response);
                    break;
                case "edit":
                    //showEditForm(request, response);
                    break;

                case "sort":
                    //sortUsers(request, response);
                    break;
                case "addUserPermision":
                    //addUserPermision(request, response);
                    break;
                default:
                    listCustomer(request, response);


            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void listCustomer(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Customer> customerList = customerService.selectAllCustomer();
        request.setAttribute("listCustomer", customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/customer/customerList.jsp");
        dispatcher.forward(request, response);
    }
}
