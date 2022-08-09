package service.customer;

import model.CustomerType;
import model.CustomerValidate;
import model.customer.Customer;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface ICustomerService {
    public boolean addCustomer(Customer customer) throws SQLException;

    public List<Customer> selectAllCustomer();

    public boolean deleteCustomer(String id) throws SQLException;

    public boolean updateCustomer(Customer customer,String id) throws SQLException;

    public List<Customer>findByName(String name);

    public Customer findCustomerById(String id);

    List<CustomerType> showCustomerType();

    Map<String, String> add(Customer customer);
}
