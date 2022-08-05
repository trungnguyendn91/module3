package repository.impl;

import model.User;
import repository.IUserRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/ss12_JDBC_CRUD?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "12345678";

    private static final String INSERT_USERS_SQL = "INSERT INTO users" + "  (name, email, country) VALUES " +
            " (?, ?, ?);";

    private static final String SELECT_USER_BY_ID = "select id,name,email,country from users where id =?";
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
    private static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, country =? where id = ?;";
    private final String FIND_BY_COUNTRY = "select * from users where country like ?;";
    private final String SELECT_ALL_Sort = "select * from users order by `name` ;";

    public UserRepository() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    public void insertUser(User user) throws SQLException {
        System.out.println(INSERT_USERS_SQL);
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public User selectUser(int id) {
        User user = null;
        // Bước 1: Thiết lập kết nối
        try {
            Connection connection = getConnection();
            // Bước 2: Tạo một câu lệnh bằng cách sử dụng đối tượng kết nối
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Bước 3: Thực hiện truy vấn hoặc cập nhật truy vấn
            ResultSet rs = preparedStatement.executeQuery();

            // Bước 4: Xử lý đối tượng ResultSet.
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    public List<User> selectAllUsers() {

        // sử dụng try-with-resources để tránh đóng tài nguyên (mã soạn sẵn)
        List<User> users = new ArrayList<>();
        // Bước 1: Thiết lập kết nối
        try{ Connection connection = getConnection();
             // Bước 2: Tạo một câu lệnh bằng cách sử dụng đối tượng kết nối
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);
            System.out.println(preparedStatement);
            // Bước 3: Thực thi truy vấn hoặc cập nhật truy vấn
            ResultSet rs = preparedStatement.executeQuery();

            // Bước 4: Xử lý đối tượng ResultSet.
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                users.add(new User(id, name, email, country));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    public boolean deleteUser(int id) throws SQLException {
        int rowDeleted;
        try {Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);
            statement.setInt(1, id);
              rowDeleted = statement.executeUpdate() ;
              return rowDeleted >0? true:false;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateUser(User user) throws SQLException {
        int rowUpdated;
        try {Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);
            statement.setString(1, user.getName());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getCountry());
            statement.setInt(4, user.getId());

            rowUpdated = statement.executeUpdate();
            return rowUpdated > 0?true:false;
        } catch (SQLException e) {
            printSQLException(e);
        }
        return false;
    }

    @Override
    public List<User> findByCountry(String country) {
        List<User> user = new ArrayList<>();
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_COUNTRY);
            preparedStatement.setString(1,"%" + country + "%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country1 = resultSet.getString("country");
                User us = new User(id, name, email, country1);
                user.add(us);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    @Override
    public List<User> allSort() {
        List<User> user = new ArrayList<>();
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_Sort);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                User us = new User(id, name, email, country);
                user.add(us);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            ;
        }
        return user;
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
