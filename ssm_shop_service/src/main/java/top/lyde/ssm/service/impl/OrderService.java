package top.lyde.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.lyde.ssm.dao.IOrderDao;
import top.lyde.ssm.domain.Order;
import top.lyde.ssm.service.IOrderService;

import java.util.List;
@Service
@Transactional
public class OrderService implements IOrderService {
    @Autowired
    IOrderDao orderDao ;

    public List<Order> findAll(Integer page,Integer size) throws Exception {
        // 设置pageNum是页码值， 参数pageSize 代表每页显示条数
        PageHelper.startPage(page,size);
        return orderDao.findAll();
    }

    public Order findById(Integer id) throws Exception {
        return orderDao.findById(id);
    }

    public Order save(Order order) throws Exception {
        return null;
    }
}
