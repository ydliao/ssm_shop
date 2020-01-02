package top.lyde.ssm.controller;

import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import top.lyde.ssm.domain.Product;
import top.lyde.ssm.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
@RequestMapping("/Product")
public class ProductController {
    @Autowired
    private IProductService productService;
    @RequestMapping(value = "/save",method ={ RequestMethod.POST})
    public  String  save(Product product) throws Exception {
        product = productService.save(product);
        return "redirect:findAll";
    }

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name="page" ,defaultValue = "1")Integer page,
                                @RequestParam(name="size" ,defaultValue = "10")Integer size
    ) throws Exception {
        ModelAndView mv= new ModelAndView();
        List<Product> productList = productService.findAll(page,size);
        PageInfo<Product> productPageInfo =new PageInfo<Product>(productList);
        mv.addObject("productPageInfo",productPageInfo);
//        mv.setViewName("redirect:product/product-list");
        mv.setViewName("product/product-list");
        return mv;
    }
    @RequestMapping("/product-add")
    public String productAdd() {
        return "product/product-add";
    }

}
