package repository.customer_repository.impl;

import model.customer.Customer;
import repository.customer_repository.BaseRepository;
import repository.customer_repository.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryService implements ICustomerRepository {
    private static final String SELECT_ALL_CUSTOMER = "select * from khach_hang where `status`=1";
    private final String DELETE_CUSTOMER =  "UPDATE khach_hang SET `status` = 0 WHERE ma_khach_hang = ?";
    private final String FIND_BY_NAME = "select * from khach_hang where ho_ten like ?;";
    private final String UPDATE_CUSTOMER = "update khach_hang set ma_loai_khach_hang = ?,ho_ten = ?,ngay_sinh = ?,gioi_tinh = ?,so_cmnd = ?,so_dien_thoai = ?,email=?,dia_chi=? where ma_khach_hang = ?";
    private final String INSERT_INTO = " insert into khach_hang( ma_loai_khach_hang," +
            " ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai, email, dia_chi )" +
            " values (?,?,?,?,?,?,?,?)";

    private static final String SELECT_CUSTOMER_BY_ID = "select * from khach_hang where ma_khach_hang = ?";
    @Override
    public boolean addCustomer(Customer customer) {
        // kết nối db
        //`name`,birthday, gender,email,`point`,class_id,`account`
        Connection connection = BaseRepository.getConnectDB();
        try {
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO);
                preparedStatement.setInt(1, customer.getCustomerTypeId());
                preparedStatement.setString(2, customer.getCustomerName());
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
        try {Connection connection = BaseRepository.getConnectDB();
            PreparedStatement statement = connection.prepareStatement(DELETE_CUSTOMER);
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() ;
            return rowDeleted >0? true:false;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateCustomer(Customer customer, int id) throws SQLException {
        int rowUpdated;
        try {Connection connection = BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER);
            preparedStatement.setInt(1, customer.getCustomerTypeId());
            preparedStatement.setString(2, customer.getCustomerName());
            preparedStatement.setDate(3, Date.valueOf(customer.getCustomerBirth()));
            preparedStatement.setBoolean(4, customer.isCustomerGender());
            preparedStatement.setInt(5, customer.getCustomerIdCard());
            preparedStatement.setInt(6, customer.getCustomerPhone());
            preparedStatement.setString(7, customer.getCustomerEmail());
            preparedStatement.setString(8, customer.getCustomerAddress());
            preparedStatement.setInt(9, id);

            rowUpdated = preparedStatement.executeUpdate();
            return rowUpdated > 0?true:false;
        } catch (SQLException e) {
            printSQLException(e);
        }
        return false;
    }

    @Override
    public List<Customer> findByName(String name) {
        List<Customer> customerList = new ArrayList<>();
        try {
            Connection connection = BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_NAME);
            preparedStatement.setString(1,"%" + name + "%");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int customerCode = rs.getInt("ma_khach_hang"); // colummLable : tên  thuocj tính của bảng
                int customerType  = rs.getInt("ma_loai_khach_hang");
                String customerName = rs.getString("ho_ten");
                String customerBirth = rs.getString("ngay_sinh");
                boolean customerGender = rs.getBoolean("gioi_tinh");
                int customerIdCard = rs.getInt("so_cmnd");
                int customerPhone = rs.getInt("so_dien_thoai");
                String email = rs.getString("email");
                String customerAddress = rs.getString("dia_chi");
                Customer customer1 = new Customer(customerCode,customerType,customerName,customerBirth,customerGender,customerIdCard,customerPhone,email,customerAddress);
                customerList.add(customer1);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return customerList;
    }

    @Override
    public Customer findCustomerById(int id) {
        Customer customer = null;
        // Bước 1: Thiết lập kết nối
        try {
            List<Customer> customerList = new ArrayList<>();
            Connection connection = BaseRepository.getConnectDB();
            // Bước 2: Tạo một câu lệnh bằng cách sử dụng đối tượng kết nối
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID);
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Bước 3: Thực hiện truy vấn hoặc cập nhật truy vấn
            ResultSet rs = preparedStatement.executeQuery();

            // Bước 4: Xử lý đối tượng ResultSet.
            while (rs.next()) {
                int customerCode = rs.getInt("ma_khach_hang"); // colummLable : tên  thuocj tính của bảng
                int customerType  = rs.getInt("ma_loai_khach_hang");
                String customerName = rs.getString("ho_ten");
                String customerBirth = rs.getString("ngay_sinh");
                boolean customerGender = rs.getBoolean("gioi_tinh");
                int customerIdCard = rs.getInt("so_cmnd");
                int customerPhone = rs.getInt("so_dien_thoai");
                String email = rs.getString("email");
                String customerAddress = rs.getString("dia_chi");
                Customer customer1 = new Customer(customerCode,customerType,customerName,customerBirth,customerGender,customerIdCard,customerPhone,email,customerAddress);
                customerList.add(customer1);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return customer;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

}
