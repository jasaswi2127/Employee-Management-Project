<%@ page import="employee.Dao.EmployeeDAO"%>
<%@ page import="Employee.Employee"%>
<%@ page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        table th, table td {
            text-align: left;
            padding: 12px 15px;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #3498db;
            color: #ffffff;
            font-size: 16px;
        }

        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        table tr:hover {
            background-color: #eaf6ff;
        }

        table td a {
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
            transition: color 0.3s;
        }

        table td a:hover {
            color: #2c3e50;
        }

        .no-data {
            text-align: center;
            font-size: 16px;
            color: #666;
            margin: 20px 0;
        }

        @media screen and (max-width: 600px) {
            table {
                font-size: 14px;
            }

            table th, table td {
                padding: 8px 10px;
            }

            h1 {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>

<%
    List<Employee> employees = (List<Employee>) request.getAttribute("employees");
%>

<div class="container">
    <h1>Employee List</h1>
    <% if (employees != null && !employees.isEmpty()) { %>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Position</th>
                    <th>Details</th>
                </tr>
            </thead>
            <tbody>
                <% for (Employee emp : employees) { %>
                <tr>
                    <td><%= emp.getId() %></td>
                    <td><%= emp.getFullName() %></td>
                    <td><%= emp.getPosition() %></td>
                    <td><a href="employee?action=detail&id=<%= emp.getId() %>">View Details</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    <% } else { %>
        <p class="no-data">No employees found.</p>
    <% } %>
</div>

</body>
</html>
