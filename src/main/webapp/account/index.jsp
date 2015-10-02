<%@ include file="../include.jsp" %>

<html>
    <head>
        <link type="text/css" rel="stylesheet" href="<c:url value="/style.css"/>"/>
    </head>
    <body>

        <h2>Usuarios</h2>

        <p>Se encuentra actualmente logeado</p>

        <p><a href="<c:url value="/home.jsp"/>">Regresar.</a></p>

        <p><a href="<c:url value="/logout"/>">Cerrar sesion.</a></p>

    </body>
</html>