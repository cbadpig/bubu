package code.com.bubu.mobi.controller;

import code.com.bubu.main.util.Result;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("mobi/manager")
public class ManagerController {

    @RequestMapping({"/loging"})
    public Result loging(String email,String password) {

        return Result.OK("登录成功！");
    }

}
