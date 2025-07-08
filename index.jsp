<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Café Menu Card</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fefefe;
            margin: 50px;
        }
        h2 {
            text-align: center;
        }
        table {
            width: 60%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #444;
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #3e3e3e;
            color: white;
        }
    </style>
</head>
<body>
    <h2>☕ Welcome to Our Café ☕</h2>

    <table>
        <tr>
            <th>Item</th>
            <th>Price</th>
        </tr>
        <%
            ArrayList<String[]> menu = (ArrayList<String[]>) request.getAttribute("menuList");
            for (String[] item : menu) {
        %>
        <tr>
            <td><%= item[0] %></td>
            <td><%= item[1] %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
