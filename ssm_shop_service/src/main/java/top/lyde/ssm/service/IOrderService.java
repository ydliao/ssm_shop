package top.lyde.ssm.service;

import top.lyde.ssm.domain.Order;

import java.util.List;

public interface IOrderService {
    public List<Order> findAll(Integer page,Integer size) throws Exception;

    public Order findById(Integer id) throws Exception;

    public Order save(Order order) throws Exception;
}
