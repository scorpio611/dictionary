<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/24/2018
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.util.Map" %>
<%@page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dictionary = new HashMap<>();

%>
<%
    PrintWriter writer = response.getWriter();
    dictionary.put("hello", "Xin chào");
    dictionary.put("how", "Thế nào");
    dictionary.put("book", "Quyển vở");
    dictionary.put("computer", "Máy tính");

    String search = request.getParameter("search");
    String result = dictionary.get(search);

    if(result!=null){
        writer.println("Word: " + search);
        writer.println("Result: " + result);
    } else {
        writer.println("Not found");
    }
%>
</body>
</html>
