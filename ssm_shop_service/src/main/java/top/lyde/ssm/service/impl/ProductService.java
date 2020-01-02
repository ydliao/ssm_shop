package top.lyde.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import top.lyde.ssm.dao.IProductDao;
import top.lyde.ssm.domain.Product;
import top.lyde.ssm.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class ProductService implements IProductService {
    @Autowired
    IProductDao productDao;
    public List<Product> findAll(Integer page,Integer size ) throws Exception {
        PageHelper.startPage(page,size);
        return productDao.findAll();
    }

    public Product save(Product product) throws Exception {
        productDao.save(product);
        return product;
    }
}
