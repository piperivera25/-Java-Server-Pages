<%-- 
    Document   : respowns
    Created on : 19/04/2023, 07:39:37 PM
    Author     : pipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="mybean" scope="session" class="co.edu.unipilito.metodos.hello.nameHandler" />
        <jsp:useBean id="clock" class="java.util.Date"/>

        <jsp:setProperty name="mybean" property="nombre"/>
        <jsp:setProperty name="mybean" property="apellido"/>
        <jsp:setProperty name="mybean" property="ano"/>

        <h1>Hola,
            <%
                java.util.Calendar ahora = java.util.Calendar.getInstance();
                int hour = ahora.get(java.util.Calendar.HOUR_OF_DAY);
            %>

            <% if ((hour > 00) && (hour < 12)) { %>
            Buenos Dias 
            <% } else if ((hour >= 12) && (hour <= 18)) { %>
            Buenos tardes
            <% } else if((hour >= 18) && (hour <= 24) ){ %>
            Buenas noches
            <% }%>

            <jsp:getProperty name="mybean" property="nombre" />
            Su apellido es: <jsp:getProperty name="mybean" property="apellido" />
            y tiene <jsp:getProperty name="mybean" property="ano" /> años
        </h1>
    </body>
</html>
