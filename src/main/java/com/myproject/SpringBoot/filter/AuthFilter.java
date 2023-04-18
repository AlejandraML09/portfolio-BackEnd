//package com.myproject.SpringBoot.filter;
//
//import java.io.IOException;
//import javax.servlet.Filter;
//import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import org.springframework.stereotype.Component;
//
//@Component
//public class AuthFilter implements Filter {
//
//    @Override
//    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
//        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
//        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
//        if (!isAdmin(httpServletRequest.getSession())) {
//            httpServletResponse.sendError(HttpServletResponse.SC_UNAUTHORIZED, "The token is not valid.");;
//        } else {
//            filterChain.doFilter(servletRequest, servletResponse);
//        }
//    }
//
//    public static boolean isAdmin(HttpSession session) {
//        return ((session.getAttribute("isAdmin") != null) && ((Boolean) session.getAttribute("isAdmin")));
//    }
//
//    @Override
//    public void init(FilterConfig fc) throws ServletException {
//        throw new UnsupportedOperationException("Not supported yet.");
//    }
//
//    @Override
//    public void destroy() {
//        throw new UnsupportedOperationException("Not supported yet.");
//    }
//    
//}
