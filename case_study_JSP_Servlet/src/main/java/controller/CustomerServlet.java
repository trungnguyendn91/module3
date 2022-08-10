package controller;

import model.CustomerType;
import model.customer.Customer;
import repository.customer_repository.ICustomerRepository;
import repository.customer_repository.impl.CustomerRepositoryService;
import service.customer.ICustomerService;
import service.customer.impl.CustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

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
                   add(request, response);
                    break;
                case "edit":
                    updateCustomer(request, response);
                    break;
                case "search":
                    searchByName(request, response);
                    break;
                case "delete":
                    deleteCustomer(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void searchByName(HttpServletRequest request, HttpServletResponse response) {
        String search = request.getParameter("search");
        List<Customer> customers = customerService.findByName(search);
        request.setAttribute("listCustomer", customers);
        try {
            request.getRequestDispatcher("view/customer/customerList.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int customerTypeId = Integer.parseInt(request.getParameter("ma_loai_khach_hang"));
        String customerName = request.getParameter("ho_ten");
        String customerBirth = request.getParameter("ngay_sinh");
        boolean customerGender = Boolean.parseBoolean(request.getParameter("gioi_tinh"));
        String customerIdCard = request.getParameter("so_cmnd");
        String customerPhone = request.getParameter("so_dien_thoai");
        String customerEmail = request.getParameter("email");
        String customerAddress = request.getParameter("dia_chi");
        Customer customer = new Customer(customerTypeId, customerName, customerBirth, customerGender,
                customerIdCard, customerPhone, customerEmail, customerAddress);

        Map<String, String> errMap =  customerService.add(customer);
        request.setAttribute("customer",customer);
        request.setAttribute("customerTypeList",customerService.showCustomerType());
        if (errMap.isEmpty()){
            response.sendRedirect("/customers");

        }else {
            for (Map.Entry<String,String> entry: errMap.entrySet()){
                request.setAttribute(entry.getKey(),entry.getValue());
            }
            try {
                request.getRequestDispatcher("view/customer/addNewCustomer.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    private void showHomePage(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = customerService.selectAllCustomer();
        List<CustomerType> customerTypeList = customerService.showCustomerType();
        request.setAttribute("customerList",customerList);
        request.setAttribute("customerTypeList",customerTypeList);
        try {
            request.getRequestDispatcher("view/customer/customerList.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }



    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String id = request.getParameter("deleteId");
        customerService.deleteCustomer(id);

        List<Customer> customerList = customerService.selectAllCustomer();
        request.setAttribute("customer", customerList);
        listCustomer(request, response);
    }
    private void updateCustomer(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String id = request.getParameter("id");

        int customerType  = Integer.parseInt(request.getParameter("ma_loai_khach_hang"));
        String customerName = request.getParameter("ho_ten");
        String customerBirth = request.getParameter("ngay_sinh");
        boolean customerGender = Boolean.parseBoolean(request.getParameter("gioi_tinh"));
        String customerIdCard = request.getParameter("so_cmnd");
        String customerPhone = request.getParameter("so_dien_thoai");
        String email = request.getParameter("email");
        String customerAddress = request.getParameter("dia_chi");
        Customer customer = new Customer(customerType,customerName,customerBirth,customerGender,
                customerIdCard,customerPhone,email,customerAddress);
        customerService.updateCustomer(customer,id);
        listCustomer(request, response);

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
                   showNewListCustomer(request, response);
                    break;
                case "edit":
                   showEditForm(request, response);
                    break;

                case "sort":
                    //sortUsers(request, response);
                    break;
                default:
                    listCustomer(request, response);


            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Customer customer = customerService.findCustomerById(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/editCustomer.jsp");
        request.setAttribute("customer", customer);
        dispatcher.forward(request, response);
    }

    private void listCustomer(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Customer> customerList = customerService.selectAllCustomer();
        request.setAttribute("listCustomer", customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/customerList.jsp");
        dispatcher.forward(request, response);
    }
    private void showNewListCustomer(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Customer> customerList = customerService.selectAllCustomer();
        request.setAttribute("customerList",customerList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/addNewCustomer.jsp");

        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
