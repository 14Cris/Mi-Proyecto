<%@ page import="com.peliculas.pelicula.Pelicula"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro</title>
</head>

	<body >

	<font face="Times new Roman" color="black" size="15">Registro película</font><br><br>
	
	<form action="resultado.jsp" method="post">

	Nombre película: <input type="text" name="txtNombre"><br><br>
		
Categoria de la pelicula <select
			name="cmbCategoria">
			<option value="1">Accion</option>
			<option value="2">Comedia</option>
			<option value="3">Terror</option>
			<option value="4">Drama</option>
		</select>
	
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Pelicula categoria = new Pelicula();
	%>
<br><br>
	Duración película: <input type="text" name="txtDuracion"> minutos. <br><br>
	
	
	Cartelera: <input type="file" name="fileFoto" accept= ".jpg, .jpeg, .png"> <br><br>
	
	<input type="submit" name="Registrar">
	</form>	
</body>
</html>