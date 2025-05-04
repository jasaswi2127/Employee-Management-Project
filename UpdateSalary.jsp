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
   <b><h2>Update Employee Salary</h2></b>
   <% 
    String msg = (String) request.getAttribute("msg");
    if (msg != null) { 
%>
    <h3><%= msg %></h3>
<% 
    } 
%>

  <form action="<%= request.getContextPath() %>/updateEmployeeSalary?action=update&empId=${empid}&Name=${name}" method="post">
      <div>
        <label for="name">Employee Name</label>
        <input type="text" name="name" value="${name}" id="name" required/>
    </div>
    <div>
        <label for="employeeId">Employee Id</label>
        <input type="text" name="empid" value="${empid}" id="empid" required/>
    </div>
    <div>
        <label for="hra">HRA (House Rent Allowance)</label>
        <input type="text" name="hra" value="${hra}" id="hra" required/>
    </div>
    <div>
        <label for="da">DA (Dearness Allowance)</label>
        <input type="text"  name="da" value="${da}" id="da" required/>
    </div>
    <div>
        <label for="wd">WD (Working Days)</label>
        <input type="text" name="wd" value="${wd}" id="wd" required/>
    </div>
    <div>
        <label for="ma">MA (Medical Allowance)</label>
        <input type="text" name="ma" value="${ma}" id="ma" required/>
    </div>
    <div>
        <label for="bo">Bonus</label>
        <input type="text" name="bonus" value="${bonus}" id="bonus" required/>
    </div>
    <div>
        <label for="pf">PF (Provident Fund)</label>
        <input type="text" name="pf" value="${pf}" id="pf" required/>
    </div>
    <div>
        <label for="basicSalary">Basic Salary</label>
        <input type="text" name="basicsalary" value="${basic_salary}" id="basicSalary" required/>
    </div>
    <div>
      <button type="submit">Update</button>
     <button type="reset" style="background-color: #c62828;">Reset</button>
    </div>
  </form>
</div>
</body>
</html>