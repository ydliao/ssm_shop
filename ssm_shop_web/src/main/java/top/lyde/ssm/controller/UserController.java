package top.lyde.ssm.controller;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import top.lyde.ssm.domain.User;
import top.lyde.ssm.service.IUserService;

import java.util.List;

@Controller
@RequestMapping("/User")
public class UserController {

    @Autowired
    IUserService userService ;
    @RequestMapping("/findAll")
    public ModelAndView findAll( @RequestParam(name = "page",defaultValue = "1") Integer page,
        @RequestParam(name = "size" ,defaultValue = "10") Integer size) throws Exception {
        List<User> users = userService.findAll(page,size);
        PageInfo<User> userPageInfo=new PageInfo<User>(users);

        ModelAndView mv=new ModelAndView();
        mv.addObject("userPageInfo",userPageInfo);
        mv.setViewName("user/user-list");
        return  mv;
    }

    @RequestMapping("/user-add")
    public String userAdd() {
        return "user/user-add";
    }
}
