<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>
</head>
<style>
/* General Styling */
body {
    font-family: 'Arial', sans-serif;
    background-color: #eaf7f9;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    color: #333;
}

/* Container */
.container {
    text-align: center;
    background: #ffffff;
    border-radius: 10px;
    padding: 30px 50px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
    max-width: 400px;
}

/* Heading */
.container h1 {
    margin-bottom: 20px;
    font-size: 24px;
    color: #28a745; /* Success Green */
}

/* Button Group */
.button-group {
    margin-top: 20px;
}

/* Buttons */
.button {
    text-decoration: none;
    display: inline-block;
    margin: 10px;
    padding: 12px 20px;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    background-color: #007bff;
    border: none;
    border-radius: 5px;
    transition: background-color 0.3s ease, transform 0.2s ease;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.button:hover {
    background-color: #0056b3;
    transform: scale(1.05);
}

.button:active {
    background-color: #004494;
}

/* Success Green Button */
.button.success {
    background-color: #28a745;
}

.button.success:hover {
    background-color: #218838;
}

/* Responsive Design */
@media (max-width: 600px) {
    .container {
        width: 90%;
        padding: 20px;
    }

    .button {
        width: 100%;
        padding: 10px;
        font-size: 14px;
    }
}

</style>
<body>
   
    <div class="container">
    	 <h1>Employee added successfully!</h1>
    	<a href="AddEmployee2.jsp" class="button">Add Employee</a>
        <a href="<%=request.getContextPath()%>/employee?action=view" class="button">views Employee</a>
    </div>
    
</body>
</html>