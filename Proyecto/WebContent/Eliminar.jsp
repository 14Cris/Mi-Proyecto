<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar</title>
</head>
<body>

<% out.print("<form action=Verificar_eliminar.jsp?id="+request.getParameter("id")+"&nom="+request.getParameter("nom")+" method=post>");%>


Esta seguro que quiere eliminar:<br>
<% out.print(request.getParameter("nom"));%><br>
<% //out.print(request.getParameter("id"));%>
Si <input type="radio" name="opcion" VALUE="si"/>
No <input type="radio" name="opcion" VALUE="no"/><br>
<input type="submit">
</form>
</body>
</html>