<%@page import="com.emergentes.modelo.Persona"%>
<%
    

    Persona reg = (Persona) request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de persona</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId() %>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="nombres" value="<%= reg.getNombres() %>"></td>
                </tr>
                
                 <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellido" value="<%= reg.getApellido()%>"></td>
                </tr>
                
                 <tr>
                    <td>edas</td>
                    <td><input type="text" name="edad" value="<%= reg.getEdad()%>"></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="enviar"></td>
                </tr>
                
                
                
            </table>
        </form>
    </body>
</html>
