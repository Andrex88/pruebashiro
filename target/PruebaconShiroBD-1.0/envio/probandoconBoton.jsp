<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../include.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Botones Permisos</title>
    </head>
    <body>
        <p>Hola <shiro:guest>Guest</shiro:guest><shiro:user><shiro:principal/></shiro:user>!
                usted puede acceder a estos botones</p>
        <shiro:hasPermission name="guardar"><input type="reset" value="guardar" /></shiro:hasPermission>
        <shiro:hasPermission name="escribir"><input type="reset" value="escribir" /></shiro:hasPermission>
        <shiro:hasPermission name="leer"><input type="reset" value="leer" /></shiro:hasPermission>
        <shiro:hasAnyRoles name="admin,supervisor"><a href="<c:url value="/logout"/>">Cerrar Sesion</a><br></shiro:hasAnyRoles>
    </body>
</html>
