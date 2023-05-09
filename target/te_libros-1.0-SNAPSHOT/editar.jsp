<%@page import="com.emergentes.modelo.Libro"%>
<%
    Libro lib = (Libro)request.getAttribute("lib");
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
        <h1><em>Nuevo Libro</em></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="${lib.id}">
            <table>
                <tr>
                    <td>ISBN</td>
                    <td><input type="text" name="isbn" value="${lib.isbn}"></td>
                </tr>
                <tr>
                    <td>Título</td>
                    <td><input type="text" name="titulo" value="${lib.titulo}"></td>
                </tr>
                <tr>
                    <td>Categoría</td>
                    <td><input type="text" name="categoria" value="${lib.categoria}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="btn btn-success" type="submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
