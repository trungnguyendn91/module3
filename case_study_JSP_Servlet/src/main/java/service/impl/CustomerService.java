package service.impl;

import model.customer.Customer;
import repository.customerRepository.ICustomerRepository;
import repository.customerRepository.impl.CustomerRepositoryService;
import service.ICustomerService;

import java.sql.SQLException;
import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepository iCustomerRepository = new CustomerRepositoryService();
    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        iCustomerRepository.insertCustomer(customer);
    }

    @Override
    public List<Customer> selectAllCustomer() {
        return iCustomerRepository.selectAllCustomer();
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        return iCustomerRepository.deleteCustomer(id);
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return iCustomerRepository.updateCustomer(customer);
    }

    @Override
    public List<Customer> findByName(String name) {
        return iCustomerRepository.findByName(name);
    }


}
