<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Employee Management System</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #f0f2f5;
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h1 {
            font-size: 32px;
            margin-bottom: 20px;
            color: #2c3e50;
            text-align: center;
        }

        h2 {
            font-size: 24px;
            margin: 20px 0 10px;
            color: #2980b9;
        }

        p {
            font-size: 16px;
            line-height: 1.6;
            color: #34495e;
            margin-bottom: 15px;
        }

        .team {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        .team-member {
            background: #ecf0f1;
            border-radius: 10px;
            padding: 15px;
            text-align: center;
            width: 200px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .team-member img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
            margin-bottom: 10px;
        }

        .team-member h3 {
            font-size: 18px;
            color: #2c3e50;
        }

        .team-member p {
            font-size: 14px;
            color: #7f8c8d;
        }

        .back-link {
            display: block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>About Us</h1>
        <h2>Company Overview</h2>
        <p>
            Welcome to our Employee Management System (EMS). We are dedicated to providing a comprehensive solution for managing employee records, attendance, payroll, and performance. Our system is designed to streamline HR processes and enhance productivity within organizations of all sizes.
        </p>
        
        <h2>Our Mission</h2>
        <p>
            Our mission is to empower organizations with efficient tools that simplify employee management, foster a positive work environment, and drive organizational success.
        </p>

        <h2>Our Vision</h2>
        <p>
            We envision a world where every organization can easily manage their workforce, ensuring that employees are engaged, productive, and valued.
        </p>

        <h2>Meet Our Team</h2>
        <div class="team">
            <div class="team-member">
                <img src="team-member1.jpg" alt="Team Member 1">
                <h3>John Doe</h3>
                <p>Founder & CEO</p>
            </div>
            <div class="team-member">
                <img src="team-member2.jpg" alt="Team Member 2">
                <h3>Jane Smith</h3>
                <p>CTO</p>
            </div>
            <div class="team-member">
                <img src="team-member3.jpg" alt="Team Member 3">
                <h3>Mark Johnson</h3>
                <p>HR Manager</p>
            </div>
        </div>

        <a class="back-link" href="index.html">Back to Home</a>
    </div>
</body>
</html>
