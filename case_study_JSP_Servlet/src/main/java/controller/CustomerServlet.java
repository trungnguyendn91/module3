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
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    addCustomer(request, response);
                    break;
                case "edit":
                    //updateUser(request, response);
                    break;
                case "search":
                    //searchCountry(request, response);
                    break;
                case "delete":
                    deleteCustomer(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
   private void addCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
       List<Customer> customers = customerService.selectAllCustomer();
        int customerID = customers.get(customers.size()-1).getCustomerId()+1;
       int customerType  = Integer.parseInt(request.getParameter("ma_loai_khach_hang"));
       String customerName = request.getParameter("ho_ten");
       String customerBirth = request.getParameter("ngay_sinh");
       boolean customerGender = Boolean.parseBoolean(request.getParameter("gioi_tinh"));
       int customerIdCard = Integer.parseInt(request.getParameter("so_cmnd"));
       int customerPhone = Integer.parseInt(request.getParameter("so_dien_thoai"));
       String email = request.getParameter("email");
       String customerAddress = request.getParameter("dia_chi");
       Customer customer = new Customer(customerID,customerType,customerName,customerBirth,customerGender,customerIdCard,customerPhone,email,customerAddress);
       customerService.insertCustomer(customer);
       RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/addNewCustomer.jsp");
       dispatcher.forward(request, response);
    }
    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("customerId"));
        customerService.deleteCustomer(id);

        List<Customer> customerList = customerService.selectAllCustomer();
        request.setAttribute("customers", customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/customerList.jsp");
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
                   showNewForm(request, response);
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
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/customerList.jsp");
        dispatcher.forward(request, response);
    }
    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/addNewCustomer.jsp");
        dispatcher.forward(request, response);
    }
}
