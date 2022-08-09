package service.customer.impl;

import model.CustomerType;
import model.CustomerValidate;
import model.customer.Customer;
import repository.customer_repository.ICustomerRepository;
import repository.customer_repository.impl.CustomerRepositoryService;
import service.customer.ICustomerService;

import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public boolean deleteCustomer(String id) throws SQLException {
        return iCustomerRepository.deleteCustomer(id);
    }

    @Override
    public boolean updateCustomer(Customer customer, String id) throws SQLException {
        return iCustomerRepository.updateCustomer(customer, id);
    }

    @Override
    public List<Customer> findByName(String name) {
        return iCustomerRepository.findByName(name);
    }

    @Override
    public Customer findCustomerById(String id) {
        return iCustomerRepository.findCustomerById(id);
    }

    @Override
    public List<CustomerType> showCustomerType() {
        return iCustomerRepository.showCustomerType();
    }

    @Override
    public Map<String, String> add(Customer customer) {
        Map<String,String> errMap = this.validate(customer);
        if (errMap.isEmpty()){
            iCustomerRepository.add(customer);
        }

        return errMap;
    }


    public Map<String, String> validate(Customer customer){
        Map<String,String> errMap = new HashMap<>();
        if (!customer.getCustomerName().isEmpty()){
            if (!customer.getCustomerName().matches("^[a-zA-Z\\s\\W|_]+$")){
                errMap.put("nameErr","Please input right format!");
            }
        }else {
            errMap.put("nameErr","Please input name");
        }

        if (!customer.getCustomerPhone().isEmpty()){
            if (!customer.getCustomerPhone().matches("^((090)|(091)|(\\(84\\)+90)|(\\(84\\)+91))[0-9]{7}$")){
                errMap.put("phoneErr","Please input right format!");
            }
        }else {
            errMap.put("phoneErr","please input phone");
        }

        if (!customer.getCustomerEmail().isEmpty()){
            if (!customer.getCustomerEmail().matches("^[a-z0-9]+@[a-z0-9]+\\.[a-z]+$")){
                errMap.put("emailErr","Please input right format!");
            }
        }else {
            errMap.put("emailErr","please input email");
        }

        if ((!customer.getCustomerBirth().isEmpty())){
            if ((customer.getCustomerBirth()).matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}$")){
                errMap.put("birthdayErr","Please input right format!");
            }
        }else {
            errMap.put("birthdayErr","please input birthday");
        }

        return errMap;
    }



}


