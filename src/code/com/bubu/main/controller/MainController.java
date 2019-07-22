package code.com.bubu.main.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * bubu网，整体控制类
 */
@RestController
@RequestMapping("")
public class MainController {

    @RequestMapping({"","/"})
    public ModelAndView index() {
        return new ModelAndView("mobi/view/manage/login");
    }

    /**
     * 登录页面
     * @return
     */
    @RequestMapping("/signin")
    public ModelAndView signin() {
        return new ModelAndView("main/view/user/signin");
    }
    /**
     * 注册页面
     * @return
     */
    @RequestMapping("/signup")
    public ModelAndView signup() {
        return new ModelAndView("main/view/user/signup");
    }

    public static void main(String[] args) {
        System.out.println("2323se");
    }
}
