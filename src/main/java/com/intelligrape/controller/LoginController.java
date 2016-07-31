package com.intelligrape.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

@Controller("loginController")
@RequestMapping("/")
@Scope("session")
public class LoginController {


    @RequestMapping(value = {"/"})
    public ModelAndView homePage() {
//        response body explanation
//        http://stackoverflow.com/questions/7672858/return-only-string-message-from-spring-mvc-3-controller
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("welcome");
        return modelAndView;

    }

}
