<%@page import="java.util.List" %>
<%@page import="com.emergentes.modelo.Seminario" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Seminario> lista = (List<Seminario>) request.getAttribute("lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Segundo Parcial</title>
    </head>
    <body>
        <center>
        <div>
          <table border="3" cellpadding="-50" align="center">
            <tr>
                <th><h1>SEGUNDO PARCIAL TEM-742</h1></th> 
            </tr>
            <tr>
                <th><h3>Nombre: Alain Alexis Quiñones Vela</h3></th>
            </tr>
            <tr>
                <th><h3>Carnet: 10072456</h3></th>
            </tr>
        </table>  
        </div>
        <h1>Registro de Seminarios</h1>
        <p><a href="MainController?op=nuevo">Nuevo</a></p>
        
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Titulo</th>
                <th>Expositor</th>
                <th>Fecha</th>
                <th>Hora</th>
                <th>Cupo</th>
            </tr>
            
            <c:forEach var="item" items="${lista}">
            <tr>
                <td>${item.id}</td>
                <td>${item.titulo}</td>
                <td>${item.expositor}</td>
                <td>${item.fecha}</td>
                <td>${item.hora}</td>
                <td>${item.cupo}</td>
                <td>
                    <a href="MainController?op=editar&id=${item.id}">
                        Editar</a>
                </td>
                <td>
                    <a href="MainController?op=eliminar&id=${item.id}"
                       onclick="return(confirm('Esta seguro ???'))">Eliminar</a>
                </td>
            </tr>
            </c:forEach>
        </table>
        </center>
    </body>
</html>
