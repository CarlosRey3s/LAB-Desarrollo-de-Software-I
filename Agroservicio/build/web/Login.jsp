<%-- 
    Document   : Login
    Created on : 5 oct 2023, 10:39:44
    Author     : A22-PC-17
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <title>Iniciar Sesión</title>
    </head>
   <body> 
            <form method="POST" action="/Agroservicio/ServletPrincipal?accion=Login" id="formLogin">
            <div id="resultLogin"></div>    
            <div class="tema"><h1>Bienvenido al Agrosistema</h1></div>
            <%--  --%>
          <c:set var="fechaActual" value="<%= new java.util.Date() %>" />
          <c:set var="formatoFecha" value="dd/MM7YYYY" /> 
          <%-- Imprimir fecha --%>
          <div>
              <label>
                  <strong>
                      <c:out value="Fecha actual: " />
                      <fmt:formatDate value='${fechaActual}' pattern='${formatoFecha}' />
                  </strong>
              </label>
          </div>
                  <div class="container">
                    <div><label>Usuario:</label></div>            
                    <div><input type="text" name="tfUsuario" id="idtfUsuario"></div><br>
                    <div><label>Contraseña:</label></div>
                    <div><input type="password" name="tfContrasenia" id="idtfContrasenia" ></div><br>
                    <div><input type="submit" value="Iniciar Sesión"></div>
                  </div>
            
        </form>  
    </body>
</html>
