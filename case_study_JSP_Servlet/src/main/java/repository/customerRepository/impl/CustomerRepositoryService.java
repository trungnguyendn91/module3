package repository.customerRepository.impl;

import model.customer.Customer;
import repository.customerRepository.BaseRepository;
import repository.customerRepository.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryService implements ICustomerRepository {
    private static final String SELECT_ALL_CUSTOMER = "select * from khach_hang";
    private final String DELETE_CUSTOMER = "call delete_user(?);";
    private final String FIND_BY_NAME = "select * from customer where name like ?;";
    private final String  UPDATE_USERS_SQL = "call edit_user(?,?,?,?);";
    private final String INSERT_INTO =" insert into customer(customerCode, customerTypeId," +
            " customerName,customerBirth,customerGender,customerIdCard,customerPhone, customerEmail, customerAddress )" +
            " values (?,?,?,?,?,?,?,?,?)";


    @Override
    public boolean insertCustomer(Customer customer) throws SQLException {
        List<Customer> customerList = new ArrayList<>();
        // kết nối dabase
        Connection connection = BaseRepository.getConnectDB();
        // tạo câu truy vấn
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO);
            preparedStatement.setInt(1,customer.getCustomerTypeId());
            preparedStatement.setString(2,customer.getCustomerName());
            preparedStatement.setDate(3, Date.valueOf(customer.getCustomerBirth()));
            preparedStatement.setBoolean(4, customer.isCustomerGender());
            preparedStatement.setInt(5, customer.getCustomerIdCard());
            preparedStatement.setInt(6, customer.getCustomerPhone());
            preparedStatement.setString(7, customer.getCustomerEmail());
            preparedStatement.setString(8, customer.getCustomerAddress());
            // câu excuteUpdate trả về số lượng lượng cột bị ảnh hưởng?
            int check =preparedStatement.executeUpdate();
            return (check==1);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Customer> selectAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        // kết nối dabase
        Connection connection = BaseRepository.getConnectDB();
        // tạo câu truy vấn
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet resultSet =preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerCode = resultSet.getInt("ma_khach_hang"); // colummLable : tên  thuocj tính của bảng
                int customerType  = resultSet.getInt("ma_loai_khach_hang");
                String customerName = resultSet.getString("ho_ten");
                String customerBirth = resultSet.getString("ngay_sinh");
                boolean customerGender = resultSet.getBoolean("gioi_tinh");
                int customerIdCard = resultSet.getInt("so_cmnd");
                int customerPhone = resultSet.getInt("so_dien_thoai");
                String email = resultSet.getString("email");
                String customerAddress = resultSet.getString("dia_chi");
                Customer customer = new Customer(customerCode,customerType,customerName,customerBirth,customerGender,customerIdCard,customerPhone,email,customerAddress);
                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        // trả về 1 list
        return customerList;
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        int rowDeleted;
        CallableStatement callableStatement;
        try {Connection connection = BaseRepository.getConnectDB();
//             PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);
            callableStatement = connection.prepareCall(DELETE_CUSTOMER);
            callableStatement.setInt(1, id);
            rowDeleted = callableStatement.executeUpdate() ;
            return rowDeleted >0? true:false;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return false;
    }

    @Override
    public List<Customer> findByName(String name) {
        return null;
    }


}
