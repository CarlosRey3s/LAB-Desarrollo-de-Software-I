<%-- 
    Document   : EliminarEmpleado
    Created on : 5 nov 2023, 22:27:27
    Author     : ccerr
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Eliminar empleado</h1>

        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=EliminarEmpleado">
            <div>
                <label>ID Empleado: ${param.ID_Empleado}</label><br>
                <label>Nombres: ${param.nombresEmpleado}</label><br>
                <label>Apellidos: ${param.apellidosEmpleado}</label><br>
                <label>Fecha de nacimiento: ${param.fechaNac}</label><br>
                <label>Teléfono: ${param.telefono}</label><br>
                <label>Correo: ${param.correo}</label><br>
                <label>DUI: ${param.dui}</label><br>
                <label>Número de afiliado ISSS: ${param.isss}</label><br>
                <label>ID Dirección: ${param.ID_Direccion}</label>   
                <label>ID Cargo: ${param.ID_Cargo}</label><br>

                <input type="hidden" name="ID_Empleado" id="ID_Empleado" value="${param.ID_Empleado}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el empleado?')" /><br><br>
            </div>
            <div>
                <a href="/Agroservicio/?accion=GestionarEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
