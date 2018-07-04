<%--
  Created by IntelliJ IDEA.
  User: Tomek
  Date: 2018-07-01
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj sesje</title>
</head>
<body>
<%

    String key = request.getParameter("sessionName");
    String value = request.getParameter("sessionValue");

    session.setAttribute(key, value );
    response.sendRedirect("index.jsp");

%>
</body>
</html>