<%@page import="com.peliculas.pelicula.Pelicula"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Resultado Busqueda Categor�a: <%= request.getParameter("cmbCategoria") %> </title>
</head>
<body >

Resultado categor�a: <%= request.getParameter("cmbCategoria")%>
<font face="Segoe Script" color="black" size="5">

<% 
Class.forName("com.mysql.jdbc.Driver");
Pelicula miPelicula=new Pelicula();
String categoria= request.getParameter("cmbCategoria");
out.print(miPelicula.consultaPorCategoria(categoria));
%>
</font>
</body>
</html>