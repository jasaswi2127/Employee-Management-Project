package com.employee.controller;

import com.employee.dao.Employee;
import com.employee.dao.EmployeeDAO;
import com.employee.model.employee;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/employee")
public class employeecontroller extends HttpServlet {

    private EmployeeDAO employeeDAO;

    @Override
    public void init() {
        employeeDAO = new EmployeeDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> employeeList = employeeDAO.getAllEmployees();
        request.setAttribute("employeeList", employeeList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("employeeList.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String position = request.getParameter("position");
        String phone = request.getParameter("phone");

        Employee employee = new Employee();
        employee.setName(name);
        employee.setEmail(email);
        employee.setPosition(position);
        employee.setPhone(phone);

        employeeDAO.addEmployee(employee);
        response.sendRedirect("employee");
    }
}
