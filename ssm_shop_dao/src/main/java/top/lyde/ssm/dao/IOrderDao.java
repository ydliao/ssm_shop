package top.lyde.ssm.dao;

import top.lyde.ssm.domain.Order;

import java.util.List;

public interface IOrderDao {
    public List<Order> findAll() throws  Exception;;

    public int save(Order order) throws  Exception;

    public Order findById(Integer id);

}
