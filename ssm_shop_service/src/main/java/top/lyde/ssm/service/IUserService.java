package top.lyde.ssm.service;

import top.lyde.ssm.domain.Order;
import top.lyde.ssm.domain.User;

import java.util.List;

public interface IUserService {
    public List<User> findAll(Integer page, Integer size) throws Exception;

    public User findById(Integer id) throws Exception;

    public User save(User user) throws Exception;
}
