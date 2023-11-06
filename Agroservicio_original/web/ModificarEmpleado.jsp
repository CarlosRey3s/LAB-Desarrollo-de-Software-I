<%-- 
    Document   : ModificarEmpleado
    Created on : 5 nov 2023, 20:43:07
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
     <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
     <h1>Modificar empleado</h1>
        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=ModificarEmpleado">
            <div>
                <label>ID Empleado:</label>
                <input type="text" name="ID_Empleado" id="ID_Empleado" value="${param.ID_Empleado}" readonly /><br>
                <label>Nombres:</label>
                <input type="text" name="nombresEmpleado" id="nombresEmpleado" value="${param.nombresEmpleado}" required /><br>
                <label>Apellidos:</label>
                <input type="text" name="apellidosEmpleado" id="apellidosEmpleado" value="${param.apellidosEmpleado}" required /><br>
                <label>Fecha de nacimiento:</label>
                <input type="date" name="fechaNac" id="fechaNac" value="${param.fechaNac}" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" value="${param.telefono}" required /><br>
                <label>Correo:</label>
                <input type="email" name="correo" id="correo" value="${param.correo}" required /><br>
                <label>DUI:</label>
                <input type="text" name="dui" id="dui" value="${param.dui}" required /><br>
                <label>Número de afiliado ISSS:</label>
                <input type="text" name="isss" id="isss" value="${param.isss}" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="ID_Direccion" id="ID_Direccion" value="${param.ID_Direccion}" required /><br><br>  
                <label>ID Cargo:</label>
                <input type="text" name="ID_Cargo" id="ID_Cargo" value="${param.ID_Cargo}" required /><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div>
            <div>
                <a href="/Agroservicio/?accion=GestionarEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
