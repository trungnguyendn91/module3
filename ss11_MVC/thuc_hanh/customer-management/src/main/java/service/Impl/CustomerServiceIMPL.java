package service.Impl;

import model.Customer;
import service.CustomerServiceI;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceIMPL implements CustomerServiceI {
    private static Map<Integer, Customer> customers;
    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1,"John", "john@codegyme.vn","Ha Noi"));
        customers.put(2, new Customer(2,"Bill", "bill@codegyme.vn","Da Nang"));
        customers.put(3, new Customer(3,"Alex", "alex@codegyme.vn","Saigon"));
        customers.put(4, new Customer(4,"Adam", "john@codegyme.vn","Beijin"));
        customers.put(5, new Customer(5,"Sophia", "Sophia@codegyme.vn","Miami"));
        customers.put(6, new Customer(6,"Rose", "rose@codegyme.vn","Newyork"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(),customer);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id,customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}
