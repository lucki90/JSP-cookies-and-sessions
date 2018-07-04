<%--
  Created by IntelliJ IDEA.
  User: Tomek
  Date: 2018-07-01
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj ciastko</title>
</head>
<body>

<%
    Cookie cookie = new Cookie(request.getParameter("name"), request.getParameter("id"));
    cookie.setMaxAge(10000);
    response.addCookie(cookie);

    response.sendRedirect("index.jsp");
%>


</body>
</html>
