<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
      <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            background: linear-gradient(135deg, #6dd5ed 0%, #2193b0 100%);
            color: #333;
        }

        /* Container Styling */
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Header Styling */
        .container h2 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #2193b0;
            text-align: center;
            border-bottom: 2px solid #6dd5ed;
            padding-bottom: 10px;
        }

        /* Form Group Styling */
        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .form-group input {
            width: 100%;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 16px;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .form-group input:focus {
            border-color: #2193b0;
            outline: none;
            box-shadow: 0 0 8px rgba(33, 147, 176, 0.4);
        }

        /* Button Styling */
        button {
            width: 100%;
            padding: 15px;
            background: #2193b0;
            color: #fff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
            transition: background 0.3s;
        }

        button:hover {
            background: #6dd5ed;
        }

        /* Footer Styling */
        footer {
            text-align: center;
            padding: 20px 0;
            color: #fff;
            font-size: 14px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 90%;
                margin: 30px auto;
            }
        }
    </style>
</head>
<body>
	<form action="<%= request.getContextPath() %>/updateEmployeeSalary?action=edit" method="post">
    <div class="container">
            <div class="form-group">
                <label for="name">Enter Name:</label>
                <input type="text" id="name" name="Name" required>
            </div>
            <div class="form-group">
                <label for="empid">Enter EmpId:</label>
                <input type="text" id="empid" name="empId" required>
            </div>
            <button type="submit">Submit</button>
        </form>
</body>
</html>

