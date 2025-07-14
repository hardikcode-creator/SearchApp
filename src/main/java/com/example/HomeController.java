package com.example;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class HomeController {

    @RequestMapping("/index")
    public String home(){
        return "index";
    }
    @RequestMapping(value = "/search" , method = RequestMethod.POST)
    public RedirectView search(@RequestParam("query-box") String query){
            RedirectView redirectView = new RedirectView();
            String url = "http://google.com/search?q="+query;
            redirectView.setUrl(url);
            return redirectView;
    }

    @RequestMapping("/forms")
    public String getForm(){
        return "forms";
    }


    //Error handling in form we use BindingResult  --> but only works for forward only , as redirects do not retain model attributes
    @RequestMapping(path="/submit",method=RequestMethod.POST)
    public String submitForm(@ModelAttribute("student") Student student, BindingResult result){

        if(result.hasErrors())
        {

          return "index";
        }
        System.out.println(student);

        return "forms";
    }


    @RequestMapping("/user/{userId}/{userName}")
    public String getUserDetail(@PathVariable("userId") int id, @PathVariable("userName") String name){
        System.out.println(id);
        System.out.println(name);

        // for demonstrating exception handling
        //String str = null;
        //System.out.println(str.length());


        return "index";

    }

    // Exception Handler

    @ResponseStatus(value= HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler({NullPointerException.class, NumberFormatException.class})
    public String exceptionHandler(){
        return "error";
    }

    @ExceptionHandler(value=Exception.class)
    public String generalizedExceptionHandler(Model m){
        System.out.println("error occurred");
        return "error";
    }

}
