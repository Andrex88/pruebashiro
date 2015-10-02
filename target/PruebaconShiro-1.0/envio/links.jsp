<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../include.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>links</title>
    </head>
    <body>
        <shiro:hasRole name="admin"><a href="<c:url value="/logout"/>">Cerrar Sesion</a><br></shiro:hasRole>
        <shiro:hasAnyRoles name="admin,supervisor"><a href="<c:url value="./probandoconBoton.jsp"/>">prueba permisos</a></shiro:hasAnyRoles>
    </body>
</html>
