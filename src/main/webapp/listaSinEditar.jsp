<%@ page import="com.example.examenfinal.Beans.UsuarioBean" %>
<%@ page import="com.example.examenfinal.Beans.ServicioBean" %>
<%@ page import="java.sql.Date" %><%--
  Created by IntelliJ IDEA.
  User: alexia
  Date: 29/11/2022
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="listaServicios" scope="request" type="java.util.ArrayList<com.example.examenfinal.Beans.ServicioBean>"/>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
          crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Lista de empleados</h1>
    <a href="<%=request.getContextPath()%>/UsuarioServlet" class="btn btn-secondary">Lista</a>
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>Tipo</th>
            <th>Fecha registro</th>
            <th>Costo</th>

        </tr>
        </thead>
        <tbody>
        <% int i = 1;
            for (ServicioBean servicioBean : listaServicios) { %>
        <tr>
            <td><%=i%>
            </td>
            <td><%=servicioBean.getTipo()%>
            </td>
            <td><%=servicioBean.getFechaRegistro()%>
            </td>
            <td><%=servicioBean.getCosto()%>
            </td>

        </tr>
        <% i++;
        }
        %>
        </tbody>
    </table>
    <% Date date = new Date(); %>

    <h6><%=date.toString()%>
    </h6>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>
</html>