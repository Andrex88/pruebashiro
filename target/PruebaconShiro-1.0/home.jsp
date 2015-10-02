<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="include.jsp" %>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="<c:url value="/style.css"/>"/>
    <title>Apache Shiro con bd</title>
</head>
<body>

<h1>Apache Shiro</h1>

<p>( <shiro:user><a href="<c:url value="/logout"/>">Cerrar Sesion</a></shiro:user>
    <shiro:guest><a href="<c:url value="/login.jsp"/>">Inicio de Sesion</a></shiro:guest> )
</p>

<p>Ejemplo con apache Shiro conectado a posgres</p>

<shiro:user><p>Visita este link y prueba los roles<a href="<c:url value="/envio/links.jsp"/>"> cuenta</a>.</p></shiro:user>
<shiro:guest><p>necesitas estar logeado para ver mas informacion.</p></shiro:guest>

<shiro:user>
<h2>Roles</h2>

<h3>Roles que tienes</h3>

<p>
    <shiro:hasRole name="admin">admin<br/></shiro:hasRole>
    <shiro:hasRole name="supervisor">supervisor<br/></shiro:hasRole>
    <shiro:hasRole name="lector">lector<br/></shiro:hasRole>
    
</p>
<h3>Permisos que tienes</h3>
<p>
    <shiro:hasPermission name="guardar">guardar<br/></shiro:hasPermission>   
    <shiro:hasPermission name="escribir">escribir<br/></shiro:hasPermission>   
    <shiro:hasPermission name="leer">leer<br/></shiro:hasPermission>   
<p>

<h3>Roles que no tienes</h3>

<p>
    <shiro:lacksRole name="admin">admin<br/></shiro:lacksRole>
    <shiro:lacksRole name="supervisor">supervisor<br/></shiro:lacksRole>
    <shiro:lacksRole name="lector">lector<br/></shiro:lacksRole>
</p>
<h3>Permisos que no tienes</h3>
<p>
    <shiro:lacksPermission name="guardar">guardar<br/></shiro:lacksPermission>   
    <shiro:lacksPermission name="escribir">escribir<br/></shiro:lacksPermission>   
    <shiro:lacksPermission name="leer">leer<br/></shiro:lacksPermission>   
<p>
</shiro:user>

</body>
</html>