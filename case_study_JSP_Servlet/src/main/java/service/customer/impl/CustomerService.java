package service.customer.impl;

import model.customer.Customer;
import repository.customer_repository.ICustomerRepository;
import repository.customer_repository.impl.CustomerRepositoryService;
import service.customer.ICustomerService;

import java.sql.SQLException;
import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepository iCustomerRepository = new CustomerRepositoryService();
    @Override
    public boolean addCustomer(Customer customer) {
        return iCustomerRepository.addCustomer(customer);
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
    public boolean updateCustomer(Customer customer,int id) throws SQLException {
        return iCustomerRepository.updateCustomer(customer,id);
    }

    @Override
    public List<Customer> findByName(String name) {
        return iCustomerRepository.findByName(name);
    }

    @Override
    public Customer findCustomerById(int id) {
        return iCustomerRepository.findCustomerById(id);
    }


}
