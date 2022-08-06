package model.customer;

import java.util.Date;

public class Customer {
    private int customerId;
    private String customerCode;
    private int customerTypeId;
    private String customerName;
    private String customerBirth;
    private int customerGender;
    private int customerIdCard;
    private int customerPhone;
    private String customerEmail;
    private String customerAddress;

    public Customer() {
    }

    public Customer(String customerCode,
                    int customerTypeId,
                    String customerName,
                    String customerBirth,
                    int customerGender,
                    int customerIdCard,
                    int customerPhone,
                    String customerEmail,
                    String customerAddress) {
        this.customerCode = customerCode;
        this.customerTypeId = customerTypeId;
        this.customerName = customerName;
        this.customerBirth = customerBirth;
        this.customerGender = customerGender;
        this.customerIdCard = customerIdCard;
        this.customerPhone = customerPhone;
        this.customerEmail = customerEmail;
        this.customerAddress = customerAddress;
    }

    public Customer(int customerId,
                    String customerCode,
                    int customerTypeId,
                    String customerName,
                    String customerBirth,
                    int customerGender,
                    int customerIdCard,
                    int customerPhone,
                    String customerEmail,
                    String customerAddress) {
        this.customerId = customerId;
        this.customerCode = customerCode;
        this.customerTypeId = customerTypeId;
        this.customerName = customerName;
        this.customerBirth = customerBirth;
        this.customerGender = customerGender;
        this.customerIdCard = customerIdCard;
        this.customerPhone = customerPhone;
        this.customerEmail = customerEmail;
        this.customerAddress = customerAddress;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerCode() {
        return customerCode;
    }

    public void setCustomerCode(String customerCode) {
        this.customerCode = customerCode;
    }

    public int getCustomerTypeId() {
        return customerTypeId;
    }

    public void setCustomerTypeId(int customerTypeId) {
        this.customerTypeId = customerTypeId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerBirth() {
        return customerBirth;
    }

    public void setCustomerBirth(String customerBirth) {
        this.customerBirth = customerBirth;
    }

    public int getCustomerGender() {
        return customerGender;
    }

    public void setCustomerGender(int customerGender) {
        this.customerGender = customerGender;
    }

    public int getCustomerIdCard() {
        return customerIdCard;
    }

    public void setCustomerIdCard(int customerIdCard) {
        this.customerIdCard = customerIdCard;
    }

    public int getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(int customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }
}
