package top.lyde.ssm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
    public ModelAndView findAll(@RequestParam(name = "page",defaultValue = "1") Integer page,
                                @RequestParam(name = "size",defaultValue = "10") Integer size)
            throws Exception {
        ModelAndView mv=new ModelAndView();
        List<Order> orderList = orderService.findAll(page,size);
        PageInfo ordersPageInfo = new PageInfo(orderList);
        ordersPageInfo.setList(orderList);
        System.out.println(ordersPageInfo);
        mv.addObject("orders",ordersPageInfo);
        mv.setViewName("order/order-list");
        return mv;
    }

    @RequestMapping("findById")
    public ModelAndView findById(@RequestParam(name = "id",required = true) Integer id) throws Exception {
        ModelAndView mv=new ModelAndView();
        Order order = orderService.findById(id);
        mv.addObject("order",order);
        System.out.println(order);
        mv.setViewName("order/order-show");
        return mv;
    }
}
