package service.impl;

import model.User;
import repository.IUserRepository;
import repository.impl.UserRepository;
import service.IUserService;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    IUserRepository IUserRepository = new UserRepository();
    @Override
    public void insertUser(User user) throws SQLException {
         IUserRepository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return IUserRepository.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return IUserRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return IUserRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return IUserRepository.updateUser(user);
    }

    @Override
    public List<User> findByCountry(String country) {
        return IUserRepository.findByCountry(country);
    }

    @Override
    public List<User> allSort() {
        return IUserRepository.allSort();
    }
}
