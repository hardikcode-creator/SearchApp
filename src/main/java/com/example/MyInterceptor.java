package com.example;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        System.out.println("This is a prehandler");
        String email = request.getParameter("email");
        if(email.contains("test"))
        {
            response.setContentType("text/html");
            response.getWriter().println("This is invalid email");
            return false;
        }
        return true;
    }
}
