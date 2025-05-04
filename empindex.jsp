<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>employee </title>
</head>
<style>
    body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #a8edea 0%, #fed6e3 100%);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        h1 {
            margin-bottom: 30px;
            font-size: 24px;
            color: #333;
        }
        .button {
            display: inline-block;
            background: #007bff;
            color: #fff;
            padding: 15px 30px;
            margin: 10px;
            text-decoration: none;
            font-size: 16px;
            border-radius: 8px;
            transition: background 0.3s ease;
        }
        .button:hover {
            background: #0056b3;
        }
</style>
<body>
 	<div class="container">
    	<h1>Add Employees</h1>
    	<a href="AddEmployee2.jsp" class="button">Add Employee</a>
    </div>
</body>
</html>