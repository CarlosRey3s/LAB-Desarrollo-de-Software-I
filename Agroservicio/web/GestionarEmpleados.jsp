<%-- 
    Document   : GestionarEmpleados
    Created on : 1 nov 2023, 14:51:36
    Author     : ccerr
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Empleados</title>
    </head>
    <body>
        <h1>Gestión de Empleados</h1>
        <h2>Listado de Empleados</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
<a href="/Agroservicio?accion=AgregarEmpleado">Agregar empleado</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Empleado</th>
                    <th>nombresEmpleado</th>
                    <th>apellidosEmpleado</th>
                    <th>fechaNac</th>
                    <th>telefono</th>
                    <th>correo</th>
                    <th>dui</th>
                    <th>isss</th>
                    <th>ID_Cargo</th>
                    <th>ID_Direccion</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaEmpleados}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Empleado}" /></td>
                        <td><c:out value="${item.nombresEmpleado}" /></td>
                        <td><c:out value="${item.apellidosEmpleado}" /></td>                        
                        <td><c:out value="${item.fechaNac}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.correo}" /></td>
                        <td><c:out value="${item.dui}" /></td>
                        <td><c:out value="${item.isss}" /></td>                        
                        <td><c:out value="${item.ID_Cargo}" /></td>
                        <td><c:out value="${item.ID_Direccion}" /></td>
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/Agroservicio/ModificarEmpleado.jsp">
                                <input type="hidden" name="ID_Empleado" value="${item.ID_Empleado}" />
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="apellidosEmpleado" value="${item.apellidosEmpleado}" />
                                <input type="hidden" name="fechaNac" value="${item.fechaNac}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="isss" value="${item.isss}" />
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="hidden" name="ID_Cargo" value="${item.ID_Cargo}" />
 
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/Agroservicio/EliminarEmpleado.jsp">
                                <input type="hidden" name="ID_Empleado" value="${item.ID_Empleado}" />
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="apellidosEmpleado" value="${item.apellidosEmpleado}" />
                                <input type="hidden" name="fechaNac" value="${item.fechaNac}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="isss" value="${item.isss}" />
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="hidden" name="ID_Cargo" value="${item.ID_Cargo}" />

                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
