package org.lilaco.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String initialize() {
        return "index";
    }

    @RequestMapping(value = "/cluster")
    public String kakaoCluster() {
        return "kakaoCluster";
    }

    @RequestMapping(value = "/basic")
    public String kakaoBasic() {
        return "kakaoBasic";
    }
}
