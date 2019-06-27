package code.com.bubu.honeybee.controller;

import code.com.bubu.honeybee.service.FanFactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/fanfaction")
public class FanFactionController {

    @Autowired
    private FanFactionService fanFactionService;

    @RequestMapping({"","/"})
    public ModelAndView index() {
        return new ModelAndView("fanfaction/view/fanfaction");
    }

    @RequestMapping("/fanfactionStart")
    public String fanfactionStart() {
        System.out.println("开始");
        fanFactionService.fanfactionStart();
        System.out.println("结束");
        return "qq";
    }
}
