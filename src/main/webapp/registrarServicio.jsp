<%--
  Created by IntelliJ IDEA.
  User: alexia
  Date: 29/11/2022
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<style>
    input[type=text], select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=submit] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: #45a049;
    }

    div {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
    }
</style>
<body>

<div>
    <form action="/action_page.php">


        <label for="servicio">Tipo de servicio</label>
        <select id="servicio" name="country">
            <option value="Impresión 3D">Impresión 3D</option>
            <option value="Corte Laser">Corte láser</option>
            <option value="Escaneo">Escaneo Digital 3D</option>
        </select>



        <label for="start">Selecciona la Fecha de Registro:</label>

        <input type="date" id="start" name="trip-start"
               value="2018-07-22"
               min="2018-01-01" max="2018-12-31">


        <input type="submit" value="Submit">
    </form>
</div>

</body>
</html>
