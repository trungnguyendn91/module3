package repository.customer_repository;

import model.CustomerType;
import model.customer.Customer;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface ICustomerRepository {
    public boolean addCustomer(Customer customer);

    public List<Customer> selectAllCustomer();

    public boolean deleteCustomer(String id) throws SQLException;

    public boolean updateCustomer(Customer customer, String id) throws SQLException;

    List<Customer> findByName(String name);

    public Customer findCustomerById(String id);

    List<CustomerType> showCustomerType();

    void add(Customer customer);

}
