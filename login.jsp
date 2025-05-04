<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EMS - Employee Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('https://aqjqjbzqjjxbvvwqcxjp.supabase.co/storage/v1/object/public/images/office-background.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.6);
            z-index: 1;
        }

        header {
            background-color: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 1rem 0;
            position: relative;
            z-index: 2;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: bold;
            color: #ffffff;
        }

        main {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            z-index: 2;
        }

        .login-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #333;
            font-size: 2rem;
            margin-bottom: 1.5rem;
        }

        .login-form {
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }

        .input-group {
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #555;
        }

        input {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
        }

        .login-btn {
            background-color: #4a90e2;
            color: white;
            border: none;
            padding: 0.75rem;
            font-size: 1rem;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-btn:hover {
            background-color: #357ae8;
        }

        .forgot-password {
            margin-top: 1rem;
            color: #4a90e2;
            text-decoration: none;
            font-size: 0.9rem;
        }

        footer {
            background-color: rgba(0, 0, 0, 0.5);
            color: #fff;
            text-align: center;
            padding: 1rem 0;
            position: relative;
            z-index: 2;
        }

        @media (max-width: 768px) {
            .login-container {
                margin: 0 1rem;
            }
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <header>
        <div class="container">
            <nav>
                <div class="logo">EMS</div>
            </nav>
        </div>
    </header>

    <main>
        <div class="login-container">
            <h1>Employee Management System</h1>
            <form action="login" method="post">
                <div class="input-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="input-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit" class="login-btn">Login</button>
            </form>
        </div>
    </main>

</body>
</html>