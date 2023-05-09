<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Libro"%>
<%
    List<Libro> lista = (List<Libro>)request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    
        <title>JSP Page</title>
    </head>
    <body>
        <h1><em>Listado de libros</em></h1>
        <p><a href="MainController?op=nuevo" class="btn btn-success">Nuevo</a></p>
        <table class="table table-striped">
            <tr>
                <th>Id</th>
                <th>ISBN</th>
                <th>Título</th>
                <th>Categoría</th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${lista}">
            <tr>
                <td>${item.id}</td>
                <td>${item.isbn}</td>
                <td>${item.titulo}</td>
                <td>${item.categoria}</td>
                <td>
                    
                    <a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('¿Esta seguro?'))" class="btn btn-danger mb-3">Eliminar</a>
                </td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>

