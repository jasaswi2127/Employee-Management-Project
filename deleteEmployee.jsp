<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, com.employee.dao.EmployeeDAO, com.employee.database.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            padding: 20px;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        button {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        button {
            background-color: #ff4d4d;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #e04343;
        }

        .message {
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #2980b9;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Delete Employee</h1>

        <%
            String message = "";
            String empId = request.getParameter("empId");

            if (empId != null && !empId.isEmpty()) {
                try {
                    EmployeeDAO employeeDAO = new EmployeeDAO();
                    boolean isDeleted = false;

                    try (Connection con = ConnectionProvider.getConnection();
                         PreparedStatement ps = con.prepareStatement("DELETE FROM employees WHERE id = ?")) {
                        ps.setInt(1, Integer.parseInt(empId));
                        isDeleted = ps.executeUpdate() > 0;
                    }

                    if (isDeleted) {
                        message = "Employee with ID " + empId + " deleted successfully.";
                    } else {
                        message = "Employee with ID " + empId + " not found.";
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    message = "An error occurred while deleting the employee. Please try again.";
                }
            }
        %>

        <form action="deleteEmployee.jsp" method="get">
            <label for="empId">Employee ID:</label>
            <input type="text" id="empId" name="empId" placeholder="Enter employee ID" required>
            <button type="submit">Delete Employee</button>
        </form>

        <% if (!message.isEmpty()) { %>
            <div class="message"><%= message %></div>
        <% } %>

        <a href="employeeList.jsp" class="back-link">Back to Employee List</a>
    </div>
</body>
</html>
