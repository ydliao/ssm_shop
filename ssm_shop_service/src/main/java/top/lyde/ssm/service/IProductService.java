package top.lyde.ssm.service;

import top.lyde.ssm.domain.Product;

import java.util.List;

public interface IProductService {
    public List<Product> findAll(Integer page,Integer size) throws  Exception;

    public Product save(Product product) throws Exception;
}
