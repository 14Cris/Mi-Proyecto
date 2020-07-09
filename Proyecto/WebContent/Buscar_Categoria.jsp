<%@page import="com.peliculas.pelicula.Pelicula"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buscar por categoría</title>
</head>
<body >
<form action="Resultado_Buscar_Categoria.jsp" method="post">
Categoria de la pelicula <select
		name="cmbCategoria">
		<option value="1">Accion</option>
		<option value="2">Comedia</option>
		<option value="3">Infantil</option>
		<option value="4">Drama</option>
	</select>


<% 
Class.forName("com.mysql.jdbc.Driver");
Pelicula miPelicula=new Pelicula();
out.print(miPelicula.mostrarCategoria());
%>

<br>
<input type="submit" name="Enviar">

</form>
</body>
</html>