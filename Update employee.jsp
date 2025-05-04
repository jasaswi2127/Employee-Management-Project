<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f7f6;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 80%;
            max-width: 600px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="date"],
        select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            margin-top: 20px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .cancel {
            background-color: #f44336;
        }

        .cancel:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Employee</h1>
        <form action="<%= request.getContextPath() %>/updateEmployee" method="post">
            <!-- Employee ID -->
            <input type="hidden" name="employeeId" value="<%= request.getAttribute("employeeId") %>">

            <!-- Full Name -->
            <label for="fullname">Full Name:</label>
            <input type="text" id="fullname" name="fullname" value="<%= request.getAttribute("fullname") %>" required>

            <!-- Date of Birth -->
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" value="<%= request.getAttribute("dob") %>" required>

            <!-- Email -->
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%= request.getAttribute("email") %>" required>

            <!-- Phone -->
            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" value="<%= request.getAttribute("phone") %>" required>

            <!-- Position -->
            <label for="position">Position:</label>
            <input type="text" id="position" name="position" value="<%= request.getAttribute("position") %>" required>

            <!-- Department -->
            <label for="department">Department:</label>
            <select id="department" name="department">
                <option value="HR" <%= "HR".equals(request.getAttribute("department")) ? "selected" : "" %>>HR</option>
                <option value="Finance" <%= "Finance".equals(request.getAttribute("department")) ? "selected" : "" %>>Finance</option>
                <option value="IT" <%= "IT".equals(request.getAttribute("department")) ? "selected" : "" %>>IT</option>
                <option value="Marketing" <%= "Marketing".equals(request.getAttribute("department")) ? "selected" : "" %>>Marketing</option>
            </select>

            <!-- Submit Button -->
            <button type="submit">Update Employee</button>
            <a href="<%= request.getContextPath() %>/employeeList" class="cancel">Cancel</a>
        </form>
    </div>
</body>
</html>
