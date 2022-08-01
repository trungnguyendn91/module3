package service.impl;

import model.User;
import repository.IUserRepository;
import repository.impl.UserRepositoryImpl;
import service.IUserService;

import java.sql.SQLException;
import java.util.List;

public class UserServiceImpl implements IUserService {
    IUserRepository iUserRepository = new UserRepositoryImpl();
    @Override
    public void insertUser(User user) throws SQLException {
         iUserRepository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return iUserRepository.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return iUserRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return iUserRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return iUserRepository.updateUser(user);
    }

    @Override
    public List<User> findByCountry(String country) {
        return iUserRepository.findByCountry(country);
    }

    @Override
    public List<User> allSort() {
        return iUserRepository.allSort();
    }
}
