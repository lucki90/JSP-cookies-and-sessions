<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Enumeration" %>
<html>
<body >
<%@include file="header.jsp" %>
<h2>Hello World!</h2>

<table style="border: 2px solid black;">
    <%
    //Przypisanie do mapy jest niepotrzbene bo enumeration zawiera mpae
        //        Map<String, String> map = new HashMap<String, String>();

        Enumeration headersNames = request.getHeaderNames();

        while (headersNames.hasMoreElements()) {
            String key = (String) headersNames.nextElement();
            String value = request.getHeader(key);
//            map.put(key, value);
            out.println("<tr> <th style='border: 2px solid black'>");
            out.println(key);
            out.println("</th> <th style='border: 2px solid black'>");
            out.println(value);
            out.println("</th> </tr>");
        }
    %>
</table>
<br><br>


<h1>Cookies</h1>
<table>
    <thead>
    <tr>
        <th>name</th>
        <th>value</th>
        <th>max age</th>
    </tr>
    </thead>
    <tbody>
    <%

        Cookie[] cookie = request.getCookies();
        for (Cookie cookie1 : cookie) {
            out.println("<tr> <th style='border: 2px solid black'>");
            out.println(cookie1.getName());
            out.println("</th> <th style='border: 2px solid black'>");
            out.println(cookie1.getValue());
            out.println("</th> <th style='border: 2px solid black'>");
            out.println(cookie1.getMaxAge());
            out.println("</th> </tr>");
        }
    %>
    </tbody>
</table>
<br>
<h1>Session</h1>

<table>
    <thead>
    <tr>
        <th>Klucz </th>
        <th>Wartosc </th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th>
        <%
            Enumeration<String> sessionNames = session.getAttributeNames();

            while (sessionNames.hasMoreElements()) {
                String sessionKey =  sessionNames.nextElement();
                String sessionValue = (String) session.getAttribute(sessionKey);

                out.println("<tr> <th style='border: 2px solid black'>");
                out.println(sessionKey);
                out.println("</th> <th style='border: 2px solid black'>");
                out.println(sessionValue);
                out.println("</th> </tr>");
            }

        %>
        </th>
    </tr>
    </tbody>

</table>

</body>
</html>
