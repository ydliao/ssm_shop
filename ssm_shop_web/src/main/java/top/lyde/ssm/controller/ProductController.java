package top.lyde.ssm.controller;

import org.springframework.web.bind.annotation.RequestMethod;
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
        System.out.println("1-------"+product);
        product = productService.save(product);
        System.out.println("2-------"+product);
        return "redirect:findAll";
    }

    @RequestMapping("/findAll")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv= new ModelAndView();
        List<Product> ps = productService.findAll();
        mv.addObject("productList",ps);
//        mv.setViewName("redirect:product/product-list");
        mv.setViewName("product/product-list");
        return mv;
    }
    @RequestMapping("/product-add")
    public String productAdd() {
        return "product/product-add";
    }

}
