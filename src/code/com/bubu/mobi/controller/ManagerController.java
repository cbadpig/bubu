package code.com.bubu.mobi.controller;

import code.com.bubu.main.util.Result;
import code.com.bubu.mobi.service.ManagerService;
import code.com.bubu.mobi.service.impl.ManagerServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("mobi/manager")
public class ManagerController {

    @Autowired
    private ManagerService managerService;

    @RequestMapping({"/loging"})
    public Result loging(String email, String password, HttpServletRequest request) {

        if(StringUtils.isBlank(email) || StringUtils.isBlank(password)) {
            Result.ERROR("邮箱或密码不能为空，请确认登录信息后重新登录！");
        }

        Result result = managerService.loging(email,password);
        if (result.flag) {
            HttpSession httpSession = request.getSession();
        }


        return result;
    }

}
