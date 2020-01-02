package top.lyde.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import top.lyde.ssm.domain.Order;
import top.lyde.ssm.service.IOrderService;

import java.util.List;

@Controller
@RequestMapping("/Order")
public class OrderController {
    @Autowired
    private IOrderService orderService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name = "page",required = true) Integer page,
                                @RequestParam(name = "size",required = true) Integer size)
            throws Exception {
        ModelAndView mv=new ModelAndView();
        List<Order> orderList = orderService.findAll(page,size);
        mv.addObject("orderList",orderList);
        mv.setViewName("order/order-list");
        return mv;
    }

    @RequestMapping("findById")
    public ModelAndView findById(@RequestParam(name = "id",required = true) Integer id) throws Exception {
        ModelAndView mv=new ModelAndView();
        Order order = orderService.findById(id);
        mv.addObject("order",order);
        mv.setViewName("order/order-show");
        return mv;
    }
}
