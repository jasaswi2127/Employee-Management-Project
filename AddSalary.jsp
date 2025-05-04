<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}
body {
  background-color: #e0f7fa; 
  height: 970px; 
  background-position: center; 
  background-repeat: no-repeat; 
  background-size: cover;

}

.container {
  width: 500px;
  padding: 13px;
  border: 1px solid black;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
  margin: 10px auto;
}

input[type="text"],
input[type="number"],
textarea {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #00796b;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.9;
}
.container div {
  margin-top: 10px;
}

h2{
font-weight: 900;
color: red;
}
</style>
</head>
<body>

<div class="container">
   <b><h2>Add Employee Salary</h2></b>

<% 
    String msg = (String) request.getAttribute("msg");
    if (msg != null) { 
%>
    <h3><%= msg %></h3>
<% 
    } 
%>
<form action="<%= request.getContextPath() %>/empSalary" method="post">

   <div>
        <label for="name">Employee Name</label>
        <input type="text" name="name" id="name" required/>
    </div>
    <div>
        <label for="employeeId">Employee Id</label>
        <input type="text" name="empId" id="email" required/>
    </div>
    <div>
        <label for="hra">HRA (House Rent Allowance)</label>
        <input type="text" name="hra" id="hra"  required/>
    </div>
    <div>
        <label for="da">DA (Dearness Allowance)</label>
        <input type="text" name="da" id="da" required/>
    </div>
    <div>
        <label for="wd">WD (Working Days)</label>
        <input type="text" name="wd" id="wd" required/>
    </div>
    <div>
        <label for="ma">MA (Medical Allowance)</label>
        <input type="text" name="ma" id="ma" required/>
    </div>
    <div>
        <label for="bo">Bonus</label>
        <input type="text" name="bonus" id="bonus" required/>
    </div>
    <div>
        <label for="pf">PF (Provident Fund)</label>
        <input type="text" name="pf" id="pf" required/>
    </div>
    <div>
        <label for="basicSalary">Basic Salary</label>
        <input type="text" name="basicsalary" id="basicSalary" required/>
    </div>
    <div>
      <button type="submit">Submit</button>
      <button type="reset" style="background-color: #c62828;">Reset</button>
    </div>
  </form>
</div>
</body>
</html>