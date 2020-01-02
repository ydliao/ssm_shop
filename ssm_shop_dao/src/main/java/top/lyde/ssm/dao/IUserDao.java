package top.lyde.ssm.dao;

import top.lyde.ssm.domain.Order;
import top.lyde.ssm.domain.User;

import java.util.List;

public interface IUserDao {
    public List<User> findAll() throws  Exception;;

    public int save(User user) throws  Exception;

    public User findById(Integer id);

}
