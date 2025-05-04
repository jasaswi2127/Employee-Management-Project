<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mark Attendance</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .attendance-box {
            width: 350px;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .attendance-box h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            font-size: 14px;
            color: #666;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
            outline: none;
            transition: border 0.3s ease;
        }

        input[type="text"]:focus,
        select:focus {
            border: 1px solid #3498db;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
            transform: translateY(-2px);
        }

        input[type="submit"]:active {
            transform: translateY(0);
        }

        .form-group select option {
            color: #333;
        }

        @media screen and (max-width: 480px) {
            .attendance-box {
                width: 90%;
                padding: 20px;
            }

            .attendance-box h2 {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="attendance-box">
        <h2>Mark Attendance</h2>
        <form action="markAttendance" method="post">
            <div class="form-group">
                <label for="employeeId">Employee ID:</label>
                <input type="text" id="employeeId" name="employeeId" value="${sessionScope.employeeId}" placeholder="Enter Employee ID">
            </div>
            <div class="form-group">
                <label for="status">Status:</label>
                <select id="status" name="status" required>
                    <option value="" disabled selected>Select status</option>
                    <option value="Present">Present</option>
                    <option value="Absent">Absent</option>
                    <option value="Half Day">Half Day</option>
                </select>
            </div>
            <div class="form-group">
                <input type="submit" value="Mark Attendance">
            </div>
        </form>
    </div>
</body>
</html>
