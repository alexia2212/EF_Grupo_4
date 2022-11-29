package com.example.examenfinal.Servlets;

import com.example.examenfinal.Beans.UsuarioBean;
import com.example.examenfinal.Daos.UsuarioDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SessionServlet", value = "/SessionServlet")
public class SessionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "login" : request.getParameter("action");

        switch (action) {
            case "login":
                RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                view.forward(request, response);

            case "logout":
                HttpSession session = request.getSession();
                session.invalidate();
                response.sendRedirect(request.getContextPath());

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        UsuarioDao usuarioDao = new UsuarioDao();
        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");

        UsuarioBean usuarioBean = usuarioDao.validarContrasena(correo,contrasena);

        if(usuarioBean!= null){
            session.setAttribute("usuarioLogueado",usuarioBean);
            session.setMaxInactiveInterval(60*60);
                response.sendRedirect(request.getContextPath()+"/UsuarioServlet");
        }else {
            request.getSession().setAttribute("error", "Error al iniciar sesión");
            response.sendRedirect(request.getContextPath());
        }

    }
}
