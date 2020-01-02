package top.lyde.ssm.dao;

import top.lyde.ssm.domain.Product;

import java.util.List;

public interface IProductDao {

    public List<Product>  findAll() throws  Exception;;

    public Product findById(Integer id) throws  Exception;;

    public int save(Product product) throws  Exception;

}
