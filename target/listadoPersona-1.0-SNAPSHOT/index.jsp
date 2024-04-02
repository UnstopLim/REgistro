<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%
    
    if(session.getAttribute("listaper")==null)
    {
        ArrayList<Persona> aux = new ArrayList<Persona>();
        session.setAttribute("listaper", aux);
    }

    ArrayList<Persona> lista = (ArrayList<Persona>)session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado registro</h1>
        <a href="MainServlet?op=nuevo">Nuevo registro</a>
        <table border="1">
            <--<!-- Datos cabesera -->
            <tr>
                <th>id</th>
                <th>nombres</th>
                <th>apellido</th>
                <th>edad</th>
                <th></th>
                <th></th>             
            </tr>
            <--<!-- datos tabla -->
            <%
                if(lista!=null)
                {
                    for(Persona item: lista)
                    {
                        
            %>
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getNombres()%></td>
                <td><%=item.getApellido()%></td>
                <td><%=item.getEdad()%></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%=item.getId()%>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%=item.getId()%>"
                       onclick="return(confirm('esta seguro de elimanar??'))"
                       >Eliminar0</a>
                </td>
                
            </tr>
            <%
                
                    }
                }
            
            %>
        </table>
    </body>
</html>
