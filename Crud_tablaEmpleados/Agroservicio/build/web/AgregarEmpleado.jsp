<%-- 
    Document   : AgregarEmpleado
    Created on : 4 nov 2023, 08:10:43
    Author     : ccerr
--%>

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
        <h1>Agregar nuevo empleado</h1>

        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=AgregarEmpleado">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>DUI:</label>
                <input type="text" name="dui" id="dui" required /><br>
                <label>Número de afiliado ISSS:</label>
                <input type="text" name="isss" id="isss" required /><br>
                <label>Nombres:</label>
                <input type="text" name="nombresEmpleado" id="nombresEmpleado" required /><br>
                <label>Apellidos:</label>
                <input type="text" name="apellidosEmpleado" id="apellidosEmpleado" required /><br>
                <label>Fecha de nacimiento:</label>
                <input type="date" name="fechaNac" id="fechaNac" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" required /><br>
                <label>Correo:</label>
                <input type="email" name="correo" id="correo" required /><br>
                <label>ID Cargo:</label>
                <input type="text" name="ID_Cargo" id="ID_Cargo" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="ID_Direccion" id="ID_Direccion" required /><br><br>                            
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el empleado?')" /><br><br>
            </div><br>
            <div>
                <a href="/Agroservicio/?accion=GestionarEmpleados">Regresar</a>
            </div>            
        </form>
    </body>
</html>
