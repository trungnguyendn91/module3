package service;

import model.Customer;

import java.util.List;

public interface CustomerServiceI {
    List<Customer> findAll();
    void save (Customer customer);
    Customer findById(int id);
    void update(int id, Customer customer);
    void remove(int id);
}
