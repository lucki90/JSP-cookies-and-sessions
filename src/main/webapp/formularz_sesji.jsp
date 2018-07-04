<%--
  Created by IntelliJ IDEA.
  User: Tomek
  Date: 2018-07-01
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formularz sesji</title>
</head>
<body>
<%@include file="header.jsp" %>
<form action="dodaj_sesje.jsp" method="post">
    <label for="sessionName"></label><input type="text" id="sessionName" name="sessionName">
    <label for="sessionValue"></label><input type="text" id="sessionValue" name="sessionValue">
    <input type="submit" content="dodaj sesje">


</form>
</body>
</html>
