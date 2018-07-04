<%--
  Created by IntelliJ IDEA.
  User: Tomek
  Date: 2018-07-01
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formularz ciastek</title>
</head>
<body>
<%@include file="header.jsp" %>
<form action="dodaj_ciastko.jsp" method="post">
    <label for="name">name</label> <input type="text" name="name" id="name"><br>
    <label for="id">id</label> <input type="text" name="id" id="id"><br>
    <label for="maxAge">max age</label> <input type="text" name="maxage" id="maxAge"><br>
    <input type="submit" content="submit">

</form>
</body>
</html>
