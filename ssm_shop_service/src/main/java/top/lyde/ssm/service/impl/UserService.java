package top.lyde.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.lyde.ssm.dao.IOrderDao;
import top.lyde.ssm.dao.IUserDao;
import top.lyde.ssm.domain.Order;
import top.lyde.ssm.domain.User;
import top.lyde.ssm.service.IOrderService;
import top.lyde.ssm.service.IUserService;

import java.util.List;

@Service
@Transactional
public class UserService implements IUserService {
    @Autowired
    IUserDao userDao ;
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    public List<User> findAll(Integer page, Integer size) throws Exception {
        // 设置pageNum是页码值， 参数pageSize 代表每页显示条数
        PageHelper.startPage(page,size);
        return userDao.findAll();
    }

    public User findById(Integer id) throws Exception {
        return userDao.findById(id);
    }

    public User save(User user) throws Exception {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userDao.save(user);
        return user;
    }
}
