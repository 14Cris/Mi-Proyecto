<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.peliculas.pelicula.Pelicula"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultado</title>
</head>
<body>

	Datos Ingresados
	<br> Nombre:
	<%=request.getParameter("txtNombre")%>
	<br> Categoría:
	<%=request.getParameter("cmbCategoria")%>
	<br> Duración:
	<%=request.getParameter("txtDuracion")%>
	<br> Cartelera:
	<%=request.getParameter("fileFoto")%>
	<%
		String Nombre = request.getParameter("txtNombre");
		String Categoria = request.getParameter("cmbCategoria");
		int Duracion = Integer.parseInt(request.getParameter("txtDuracion"));
		String ruta = request.getParameter("fileFoto");
		if (Nombre == "" || ruta == "") {

		}

		byte[] Cartelera = ruta.getBytes();
		Class.forName("com.mysql.jdbc.Driver");
		Pelicula miPelicula = new Pelicula(Nombre, Duracion, Cartelera);
		miPelicula.ingresarPelicula(Categoria, ruta);
	%>

</body>
</html>