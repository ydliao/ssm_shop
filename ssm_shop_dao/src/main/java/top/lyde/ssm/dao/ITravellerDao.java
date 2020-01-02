package top.lyde.ssm.dao;

import top.lyde.ssm.domain.Traveller;

import java.util.List;

public interface ITravellerDao {
    public List<Traveller> findByOrderId(Integer orderId);
}
