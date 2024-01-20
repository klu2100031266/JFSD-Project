<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Book List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        
        h1 {
            background-color: #333;
            color: #fff;
            padding: 10px;
        }
        
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
        }
        
        table, th, td {
            border: 1px solid #ccc;
        }
        
        th {
            background-color: #333;
            color: #fff;
            font-weight: bold;
        }
        
        td {
            padding: 10px;
        }
        
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        tr:nth-child(odd) {
            background-color: #fff;
        }
    </style>
</head>
<body>
    <h1>Book List</h1>
    <table>
        <tr>
            <th>ISBN</th>
            <th>Title</th>
            <th>Serial No</th>
            <th>Description</th>
        </tr>
        <tr th:each="book : ${books}">
            <td th:text="${book.isbn}"></td>
            <td th:text="${book.title}"></td>
            <td th:text="${book.serial}"></td>
            <td th:text="${book.description}"></td>
        </tr>
    </table>
</body>
</html>
