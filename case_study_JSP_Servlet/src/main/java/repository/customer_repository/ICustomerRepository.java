package repository.customer_repository;

import model.customer.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerRepository {
    public boolean addCustomer(Customer customer);

    public List<Customer> selectAllCustomer();

    public boolean deleteCustomer(int id) throws SQLException;

    public boolean updateCustomer(Customer customer, int id) throws SQLException;

    List<Customer> findByName(String name);

    public Customer findCustomerById(int id);


}
