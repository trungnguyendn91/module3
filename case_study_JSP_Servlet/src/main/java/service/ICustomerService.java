package service;

import model.customer.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerService {
    public void insertCustomer(Customer customer) throws SQLException;

    public List<Customer> selectAllCustomer();

    public boolean deleteCustomer(int id) throws SQLException;

    public boolean updateCustomer(Customer customer) throws SQLException;

    public List<Customer>findByName(String name);
}
