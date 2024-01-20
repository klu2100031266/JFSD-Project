<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Library Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        th {
            background-color: #4285f4;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <th>ISBN</th>
            <th>Title</th>
            <th>Serial</th>
            <th>Description</th>
        </tr>
        <%@ page import="com.example.LibraryManagement.Book" %>
        <%@ page import="java.util.List" %>
        <% for(Book b: (List<Book>)request.getAttribute("p")) { %>
            <tr>
                <td><%= b.getIsbn() %></td>
                <td><%= b.getTitle() %></td>
                <td><%= b.getSerial() %></td>
                <td><%= b.getDescription()%></td>
            </tr>
        <% } %>
    </table>
</body>
</html>
