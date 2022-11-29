package com.example.examenfinal.Filtros;

import com.example.examenfinal.Beans.UsuarioBean;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "FilterLogin")
public class FilterLogin implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest request=(HttpServletRequest) req;
        HttpServletResponse response=(HttpServletResponse) resp;

        UsuarioBean usurioLogueado = (UsuarioBean) request.getSession().getAttribute("usuarioLogueado");

        if (usurioLogueado==null) {
            response.sendRedirect(request.getContextPath());
        } else{
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            chain.doFilter(request,response);
        }
    }
}
