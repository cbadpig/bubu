package code.com.bubu.mobi.controller;

import code.com.bubu.main.util.Result;
import code.com.bubu.mobi.service.ManagerService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("mobi")
public class ManagerController {

    @Autowired
    private ManagerService managerService;

    @RequestMapping({"/",""})
    public ModelAndView index() {
        return new ModelAndView("mobi/view/manage/login");
    }

    @RequestMapping({"manage","manage/"})
    public ModelAndView index_manager() {
        return new ModelAndView("mobi/view/manage/manage");
    }

    @RequestMapping({"menu"})
    public ModelAndView index_menu() {
        return new ModelAndView("mobi/view/manage/menu/uploadbook");
    }

    @RequestMapping({"/loging"})
    public Result loging(String email, String password, HttpServletRequest request) {

        if(StringUtils.isBlank(email) || StringUtils.isBlank(password)) {
            Result.ERROR("邮箱或密码不能为空，请确认登录信息后重新登录！");
        }

        Result result = managerService.loging(email,password);
        if (result.flag) {
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("email",email);
        }
        return result;
    }

    @RequestMapping({"/sidemenu"})
    public Result sideMenu(HttpServletRequest request) {
        String email = (String)request.getSession().getAttribute("email");
        if (StringUtils.isBlank(email)) {
            return Result.ERROR("未找到管理员登录信息，无法获取菜单。");
        }
        return managerService.sideMenu(email);
    }
}
