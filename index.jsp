<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to EMS - Employee Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f8f9fa;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        header {
            background-color: #3498db;
            color: #fff;
            padding: 1rem 0;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: bold;
        }

        .nav-links a {
            color: #fff;
            text-decoration: none;
            margin-left: 20px;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: #f1c40f;
        }

        .hero {
            background: linear-gradient(135deg, #3498db, #2980b9);
            color: #fff;
            text-align: center;
            padding: 4rem 0;
        }

        .hero h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }

        .cta-button {
            display: inline-block;
            background-color: #f1c40f;
            color: #333;
            padding: 12px 24px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .cta-button:hover {
            background-color: #f39c12;
        }

        .features {
            padding: 4rem 0;
            background-color: #fff;
        }

        .features h2 {
            text-align: center;
            margin-bottom: 2rem;
            color: #2c3e50;
        }

        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }

        .feature-item {
            text-align: center;
            padding: 1.5rem;
            background-color: #ecf0f1;
            border-radius: 8px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .feature-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        .feature-icon {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: #3498db;
        }

        .testimonial {
            background-color: #34495e;
            color: #fff;
            padding: 4rem 0;
            text-align: center;
        }

        .testimonial-content {
            max-width: 800px;
            margin: 0 auto;
        }

        .testimonial p {
            font-style: italic;
            font-size: 1.2rem;
            margin-bottom: 1rem;
        }

        .testimonial-author {
            font-weight: bold;
        }

        footer {
            background-color: #2c3e50;
            color: #ecf0f1;
            text-align: center;
            padding: 1rem 0;
        }

        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }

            .hero h1 {
                font-size: 2rem;
            }

            .hero p {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <header>
        <nav class="container">
            <div class="logo">EMS</div>
            <div class="nav-links">
                <a href="login.jsp">Admin Panel</a>
       
            </div>
        </nav>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <h1>Welcome to Employee Management System</h1>
                <p>Streamline your HR processes and boost productivity with our comprehensive EMS solution.</p>
                <a href="login.jsp" class="cta-button">Admin Panel</a>
            </div>
        </section>

        <section id="features" class="features">
            <div class="container">
                <h2>Why Choose Our EMS?</h2>
                <div class="feature-grid">
                    <div class="feature-item">
                        <div class="feature-icon">📊</div>
                        <h3>Efficient Management</h3>
                        <p>Easily manage employee data, attendance, and performance.</p>
                    </div>
                    <div class="feature-item">
                        <div class="feature-icon">🚀</div>
                        <h3>Boost Productivity</h3>
                        <p>Streamline processes and increase overall team efficiency.</p>
                    </div>
                    <div class="feature-item">
                        <div class="feature-icon">📈</div>
                        <h3>Insightful Analytics</h3>
                        <p>Gain valuable insights with our powerful reporting tools.</p>
                    </div>
                    <div class="feature-item">
                        <div class="feature-icon">🔒</div>
                        <h3>Secure &amp; Reliable</h3>
                        <p>Your data is safe with our top-notch security measures.</p>
                    </div>
                </div>
            </div>
        </section>

        <section id="testimonial" class="testimonial">
            <div class="container">
                <div class="testimonial-content">
                    <p>"The Employee Management System has revolutionized our HR processes. It's user-friendly, efficient, and has significantly improved our productivity."</p>
                    <p class="testimonial-author">- Jane Doe -</p>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2024 Employee Management System. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>