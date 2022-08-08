package model.customer;

public class Customer {
    private int customerId;
    private int customerTypeId;
    private String customerName;
    private String customerBirth;
    private boolean customerGender;
    private int customerIdCard;
    private int customerPhone;
    private String customerEmail;
    private String customerAddress;

    public Customer() {
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
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

    public boolean isCustomerGender() {
        return customerGender;
    }

    public void setCustomerGender(boolean customerGender) {
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

    public Customer(int customerId, int customerTypeId, String customerName, String customerBirth, boolean customerGender, int customerIdCard, int customerPhone, String customerEmail, String customerAddress) {
        this.customerId = customerId;
        this.customerTypeId = customerTypeId;
        this.customerName = customerName;
        this.customerBirth = customerBirth;
        this.customerGender = customerGender;
        this.customerIdCard = customerIdCard;
        this.customerPhone = customerPhone;
        this.customerEmail = customerEmail;
        this.customerAddress = customerAddress;
    }

    public Customer(int customerTypeId, String customerName, String customerBirth, boolean customerGender, int customerIdCard, int customerPhone, String customerEmail, String customerAddress) {
        this.customerTypeId = customerTypeId;
        this.customerName = customerName;
        this.customerBirth = customerBirth;
        this.customerGender = customerGender;
        this.customerIdCard = customerIdCard;
        this.customerPhone = customerPhone;
        this.customerEmail = customerEmail;
        this.customerAddress = customerAddress;
    }
}
